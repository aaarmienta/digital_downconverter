/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "xiic_l.h"
#include "xuartps.h"
#include "xgpio_l.h"

#define IIC_BASE_ADDRESS    XPAR_AXI_IIC_0_BASEADDR
#define CODEC_ADDRESS       0x1A
#define DATA_BYTES          2

#define UART_BASE_ADDRESS   XPAR_PS7_UART_1_BASEADDR

#define GPIO_0_BASE_ADDRESS	XPAR_AXI_GPIO_0_BASEADDR
#define GPIO_1_BASE_ADDRESS	XPAR_AXI_GPIO_1_BASEADDR

#define GPIO_SET_OUTPUT		0x00000000
#define ZEROS				0x00000000
#define ONES				0x11111111

#define INC_100_HZ          100
#define INC_1000_HZ         1000
#define DEC_100_HZ          -100
#define DEC_1000_HZ         -1000

void configure_codec(void);
int write_codec_register(u8 regnum, u16 regval);
void menu(void);
void reset(void);
int set_freq(int freq_out);
int inc_dec_freq(int inc_dec);

const int SYS_CLK = 125000000;
const int PHASE_WIDTH = 27;
const int PW_VALUE = 134217728; // 2^27
const int PWdivSYS = 1.0737; 	// Phase Width / System Clock
u32 delta_phase = 0;
int freq_out = 0;
int i = 0;

int main()
{
    init_platform();
    configure_codec();
    XGpio_WriteReg(GPIO_0_BASE_ADDRESS,XGPIO_TRI_OFFSET,GPIO_SET_OUTPUT);
    XGpio_WriteReg(GPIO_1_BASE_ADDRESS,XGPIO_TRI_OFFSET,GPIO_SET_OUTPUT); // LSB is used to set I/O
    XGpio_WriteReg(GPIO_1_BASE_ADDRESS, XGPIO_DATA_OFFSET, ONES);
    menu();

    while(1)
    {
        if (XUartPs_IsReceiveData(UART_BASE_ADDRESS))
        {
            char sel = XUartPs_RecvByte(UART_BASE_ADDRESS);
            switch (sel)
            {
                case 'M' :
                    menu();
                    break;
                case 'f' :
                	XUartPs_SendByte(UART_BASE_ADDRESS,sel);
                	XUartPs_SendByte(UART_BASE_ADDRESS,0x20);
                	char buffer[5] = {0};
                    while (1)
                    {
                        if (XUartPs_IsReceiveData(UART_BASE_ADDRESS))
                        {
                            buffer[i] = XUartPs_RecvByte(UART_BASE_ADDRESS);
                            XUartPs_SendByte(UART_BASE_ADDRESS,buffer[i]);
                            if (i > 5 || buffer[i] == 0x0D)
                            {
                            	i = 0;
                            	break;
                            }
                            i++;
                        }
                    }
                    freq_out = atoi(buffer);
                    set_freq(freq_out);
                    break;
                case 'u' :
                    inc_dec_freq(INC_100_HZ);
                    break;
                case 'U' :
                    inc_dec_freq(INC_1000_HZ);
                    break;
                case 'd' :
                    inc_dec_freq(DEC_100_HZ);
                    break;
                case 'D' :
                    inc_dec_freq(DEC_1000_HZ);
                    break;
                case 'r' :
                    reset();
                    break;
                default :
                    printf("Invalid entry\n\n");
                    break;
            }
        }
    }

    cleanup_platform();
    return 0;
}

int write_codec_register(u8 regnum, u16 regval)
{
	u8 u8TxData[2];

	u8TxData[0] = regnum << 1;
	u8TxData[0] = u8TxData[0] | ((regval >> 8) & 0b1);
	u8TxData[1] = regval & 0xFF;

	XIic_Send(IIC_BASE_ADDRESS, CODEC_ADDRESS, u8TxData, DATA_BYTES, XIIC_STOP);
}

void configure_codec()
{
	write_codec_register(15,0x00);
	usleep(1000);
	write_codec_register(6,0x30);
	write_codec_register(0,0x17);
	write_codec_register(1,0x17);
	write_codec_register(2,0x79);
	write_codec_register(3,0x79);
	write_codec_register(4,0x10);
	write_codec_register(5,0x00);
	write_codec_register(7,0x02);
	write_codec_register(8,0x00);
	usleep(75000);
	write_codec_register(9,0x01);
	write_codec_register(6,0x00);
}

void menu()
{
    printf("Welcome to DDS Audio Playback System by Albert Armienta\n");
    printf("M: Return to Menu\n");
    printf("f #: Select Frequency as # Hz (1-50000 Hz)\n");
    printf("u: Increment 100 Hz\n");
    printf("U: Increment 1000 Hz\n");
    printf("d: Decrement 100 Hz\n");
    printf("D: Decrement 1000 Hz\n");
    printf("T: Tune Radio\n");
    printf("+: Increase Volume\n");
    printf("-: Decrease Volume\n")
    printf("r: Reset\n");
}

void reset()
{
	u32 temp = delta_phase;
	printf("Set DDS ARESETn Low and bringing back High\n");
	printf("Resetting Phase Increment...\n\n");
	delta_phase = 0;
	XGpio_WriteReg(GPIO_0_BASE_ADDRESS, XGPIO_DATA_OFFSET, delta_phase);
	XGpio_WriteReg(GPIO_1_BASE_ADDRESS, XGPIO_DATA_OFFSET, ZEROS);
	sleep(0.000000020); //Sleep for at least two clock cycles (16ns)
	XGpio_WriteReg(GPIO_1_BASE_ADDRESS, XGPIO_DATA_OFFSET, ONES);
	delta_phase = temp;
	XGpio_WriteReg(GPIO_0_BASE_ADDRESS, XGPIO_DATA_OFFSET, delta_phase);
}

int set_freq(int freq_out)
{
	if (freq_out > 1000000)
	{
		printf("\nError: Select frequency from 0 to 1000000\n");
		printf("Setting frequency to max value\n");
		freq_out = 1000000;
	}
	else if (freq_out < 0)
	{
		printf("\nError: Select frequency from 0 to 1000000\n");
		printf("Setting frequency to min value\n");
		freq_out = 0;
	}
	else
	{
		printf("\n\nSetting frequency...\n\n");
	}
	delta_phase = (freq_out * 1.0737);
	printf("Phase value: %d\n", delta_phase);
	printf("Frequency value: %d Hz\n\n", freq_out);
	XGpio_WriteReg(GPIO_0_BASE_ADDRESS, XGPIO_DATA_OFFSET, delta_phase);
}

int inc_dec_freq(int inc_dec)
{
    freq_out = freq_out + (inc_dec);
    if (freq_out > 1000000)
    {
        printf("Maximum frequency value reached\n\n");
        freq_out = 1000000;
    }
    else if (freq_out < 0)
    {
        printf("Minimum frequency value reached\n\n");
        freq_out = 0;
    }
    delta_phase = (freq_out * 1.0737);
    printf("Phase value: %d\n", delta_phase);
    printf("Current Frequency: %d Hz\n\n", freq_out);
    XGpio_WriteReg(GPIO_0_BASE_ADDRESS, XGPIO_DATA_OFFSET, delta_phase);
}
