-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Oct 25 01:57:04 2022
-- Host        : Alberts-Dell-XPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/alber/OneDrive/Documents/Xilinx/DDC/Vivado/system/system.gen/sources_1/ip/lowlevel_dac_intfc_0/lowlevel_dac_intfc_0_stub.vhdl
-- Design      : lowlevel_dac_intfc_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lowlevel_dac_intfc_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk125 : in STD_LOGIC;
    data_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sdata : out STD_LOGIC;
    lrck : out STD_LOGIC;
    bclk : out STD_LOGIC;
    mclk : out STD_LOGIC;
    latched_data : out STD_LOGIC;
    valid : in STD_LOGIC
  );

end lowlevel_dac_intfc_0;

architecture stub of lowlevel_dac_intfc_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk125,data_word[31:0],sdata,lrck,bclk,mclk,latched_data,valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "lowlevel_dac_intfc,Vivado 2022.1";
begin
end;
