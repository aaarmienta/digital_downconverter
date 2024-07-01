library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity toplevel is
  Port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    -- I2C --
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    -- DAC Interface --
    sdata     : out std_logic;
    lrck      : out std_logic;
    bclk      : out std_logic;
    mclk      : out std_logic;
    muten     : out std_logic;
    -- SW0 --
    sel       : in std_logic
  );
end toplevel;

architecture Behavioral of toplevel is
  signal valid        : std_logic;
  signal l_data       : std_logic;
  signal s_valid      : std_logic;
  signal m_valid      : std_logic;
  signal m_valid2     : std_logic;
  signal m_data16     : std_logic_vector(15 downto 0);
  signal m_data32     : std_logic_vector(31 downto 0);
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal FCLK        : std_logic;
  signal RST         : std_logic;
  signal RSTn        : std_logic;
  signal pinc        : std_logic_vector(31 downto 0);
  signal dds_RSTn    : std_logic;
  signal sdata_sig   : std_logic;
  -- FIR --
  signal fir1_out    : std_logic_vector(31 downto 0);
  signal fir2_out    : std_logic_vector(31 downto 0);
  signal fir1_ready  : std_logic;
  signal fir2_ready  : std_logic;
  signal fir1_valid  : std_logic;
  signal fir2_valid  : std_logic;
  
  COMPONENT dds_compiler_0
  PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axis_phase_tvalid : IN STD_LOGIC;
      s_axis_phase_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
   );
  END COMPONENT;

COMPONENT lowlevel_dac_intfc_0
  PORT (
    rst : IN STD_LOGIC;
    clk125 : IN STD_LOGIC;
    data_word : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    sdata : OUT STD_LOGIC;
    lrck : OUT STD_LOGIC;
    bclk : OUT STD_LOGIC;
    mclk : OUT STD_LOGIC;
    latched_data : OUT STD_LOGIC;
    valid : IN STD_LOGIC 
  );
END COMPONENT;

  COMPONENT  design_1 is
  PORT (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    RST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    FCLK : out STD_LOGIC;
    phase_inc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_RSTn : out STD_LOGIC_VECTOR ( 0 to 0 )
    );
  END COMPONENT design_1;
   
  COMPONENT IOBUF is
  PORT (
      I : in STD_LOGIC;
      O : out STD_LOGIC;
      T : in STD_LOGIC;
      IO : inout STD_LOGIC
    );
  END COMPONENT IOBUF;
    
COMPONENT ila_0
PORT (
	clk : IN STD_LOGIC;
	probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
	probe1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
	probe2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	probe3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END COMPONENT;

COMPONENT fir_compiler_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

COMPONENT fir_compiler_1
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

begin
  -- m_data32 <= m_data16 & m_data16;
  m_data32 <= (fir2_out(30 downto 15) & fir2_out(30 downto 15)) when sel = '1' else (m_data16 & m_data16);
  

DDS : dds_compiler_0
  PORT MAP (
    aclk => FCLK,
    aresetn => dds_RSTn,
    s_axis_phase_tvalid => s_valid,
    s_axis_phase_tdata => pinc,
    m_axis_data_tvalid => m_valid,
    m_axis_data_tdata => m_data16
  );
  
 DAC : lowlevel_dac_intfc_0
  PORT MAP (
    rst => RST,
    clk125 => FCLK,
    data_word => m_data32,
    sdata => sdata_sig,
    lrck => lrck,
    bclk => bclk,
    mclk => mclk,
    latched_data => l_data,
    valid => valid
  );
  
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
    
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK => FCLK,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      RST(0) => RST,
      dds_RSTn(0) => dds_RSTn,
      phase_inc(31 downto 0) => pinc(31 downto 0)
    );
    
ILA : ila_0
PORT MAP (
	clk => FCLK,
	probe0 => pinc, 
	probe1 => m_data16, 
	probe2 => fir1_out(30 downto 15),
	probe3 => fir2_out(30 downto 15),
	probe4 => m_data32,
	probe5(0) => fir1_valid,
	probe6(0) => fir2_valid
);

filter1 : fir_compiler_0
  PORT MAP (
    aclk => FCLK,
    s_axis_data_tvalid => s_valid,
    s_axis_data_tready => fir1_ready,
    s_axis_data_tdata => m_data16,
    m_axis_data_tvalid => fir1_valid,
    m_axis_data_tdata => fir1_out
  );

filter2 : fir_compiler_1
  PORT MAP (
    aclk => FCLK,
    s_axis_data_tvalid => fir1_valid,
    s_axis_data_tready => fir2_ready,
    s_axis_data_tdata => fir1_out(30 downto 15),
    m_axis_data_tvalid => fir2_valid,
    m_axis_data_tdata => fir2_out
  );

  s_valid <= '1';
  muten <= '1';
  sdata <= sdata_sig;

end Behavioral;
