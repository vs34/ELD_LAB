-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Nov 21 09:48:51 2023
-- Host        : buntu running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/vs/funtion/verilog/ELD_LAB/CW_11_fft/CW_11_fft.srcs/sources_1/bd/pl/ip/pl_axis_dwidth_converter_0_0/pl_axis_dwidth_converter_0_0_stub.vhdl
-- Design      : pl_axis_dwidth_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pl_axis_dwidth_converter_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );

end pl_axis_dwidth_converter_0_0;

architecture stub of pl_axis_dwidth_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,aclken,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[15:0],m_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
begin
end;
