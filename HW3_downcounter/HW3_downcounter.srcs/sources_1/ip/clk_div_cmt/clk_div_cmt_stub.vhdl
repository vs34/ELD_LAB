-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Sep  5 09:39:12 2023
-- Host        : buntu running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/vs/funtion/LAB3_counter_8bit/LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt_stub.vhdl
-- Design      : clk_div_cmt
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div_cmt is
  Port ( 
    clk_8Mhz : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC
  );

end clk_div_cmt;

architecture stub of clk_div_cmt is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_8Mhz,clk_100MHz";
begin
end;
