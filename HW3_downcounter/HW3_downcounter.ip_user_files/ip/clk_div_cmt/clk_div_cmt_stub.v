// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Sep  5 09:39:12 2023
// Host        : buntu running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/vs/funtion/LAB3_counter_8bit/LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt_stub.v
// Design      : clk_div_cmt
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_div_cmt(clk_8Mhz, clk_100MHz)
/* synthesis syn_black_box black_box_pad_pin="clk_8Mhz,clk_100MHz" */;
  output clk_8Mhz;
  input clk_100MHz;
endmodule
