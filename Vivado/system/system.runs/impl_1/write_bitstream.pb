
l
Command: %s
1870*	planAhead27
#open_checkpoint toplevel_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.047 . Memory (MB): peak = 1277.809 ; gain = 2.1882default:defaulth px� 
�
�The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board28
$digilentinc.com:zybo-z7-20:part0:1.12default:defaultZ49-67h px� 
�
�The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board28
$digilentinc.com:zybo-z7-20:part0:1.12default:defaultZ49-67h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2362default:default2
1282.0742default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5982default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2022.12default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
Read XDEF Files: 2default:default2
00:00:012default:default2 
00:00:00.8382default:default2
1537.4342default:default2
3.0002default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.8382default:default2
1537.4342default:default2
3.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1537.4342default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 272 instances were transformed.
  CFGLUT5 => CFGLUT5 (SRL16E, SRLC32E): 168 instances
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 32 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
  SRLC32E => SRL16E: 64 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2022.1 (64-bit)2default:default2
35262622default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:192default:default2
00:00:412default:default2
1537.4772default:default2
285.7152default:defaultZ17-268h px� 
h
Command: %s
53*	vivadotcl27
#write_bitstream -force toplevel.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�LUT equation term check: Used physical LUT pin 'A1' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A2*A4)+(A2*(~A4)*(~A3))+((~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I1Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A4' of cell %s (pin %s) is not included in the LUT equation: 'O6=(A6+~A6)*((A1))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1	Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_12default:default2default:default2�
 "�
Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I0Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A2*A4)+(A2*(~A4)*(~A3))+((~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I0Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�'
`No routable loads: 25 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�&
 "�
Adbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMSAdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMS2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
]dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg[2:0]Xdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg2default:default"�
\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]2default:default"�
`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture2default:default"�
Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck[0]Ldbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[0]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[0]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:..."/
(the first 15 of 23 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
sDDS/U0/i_synth/i_dds/I_SINCOS.i_comp_eff.i_eff/MULT_PI_U/i_synth_option.i_synth_model/opt_vx7.i_uniwrap/i_primitive	sDDS/U0/i_synth/i_dds/I_SINCOS.i_comp_eff.i_eff/MULT_PI_U/i_synth_option.i_synth_model/opt_vx7.i_uniwrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "�
rDDS/U0/i_synth/i_dds/I_SINCOS.i_comp_eff.i_eff/S1_COS_U/i_synth_option.i_synth_model/opt_vx7.i_uniwrap/i_primitive	rDDS/U0/i_synth/i_dds/I_SINCOS.i_comp_eff.i_eff/S1_COS_U/i_synth_option.i_synth_model/opt_vx7.i_uniwrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_MULT_NONE_connects_CEM_GND: %s: When the DSP48E1 USE_MULT attribute is set to NONE, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "�
�filter1/U0/i_synth/g_polyphase_decimation.i_polyphase_decimation/g_parallel.g_paths[0].g_accum.i_accum/i_add_accum/g_dsp48.g_dsp48e1.i_dsp48e1	�filter1/U0/i_synth/g_polyphase_decimation.i_polyphase_decimation/g_parallel.g_paths[0].g_accum.i_accum/i_add_accum/g_dsp48.g_dsp48e1.i_dsp48e12default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-28h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "�
�filter1/U0/i_synth/g_polyphase_decimation.i_polyphase_decimation/g_parallel.g_paths[0].g_accum.i_accum/i_add_accum/g_dsp48.g_dsp48e1.i_dsp48e1	�filter1/U0/i_synth/g_polyphase_decimation.i_polyphase_decimation/g_parallel.g_paths[0].g_accum.i_accum/i_add_accum/g_dsp48.g_dsp48e1.i_dsp48e12default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-30h px� 
t
DRC finished with %s
1905*	planAhead26
"0 Errors, 4 Warnings, 4 Advisories2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
_
Writing bitstream %s...
11*	bitstream2"
./toplevel.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262default:default2
42default:default2
22default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:342default:default2
00:01:002default:default2
2115.9412default:default2
578.4652default:defaultZ17-268h px� 


End Record