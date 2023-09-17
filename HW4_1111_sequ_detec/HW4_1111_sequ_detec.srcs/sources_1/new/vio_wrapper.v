`timescale 1ns / 1ps
module Vio_wrapper(
input Clk_100MHz
);
wire in0;
wire in1;
wire[2:0] curr_s;
wire out;
wire reset;
wire Clk_pb;
vio v1 (
.clk(Clk_100MHz),
.probe_in0(out),
.probe_in1(curr_s),
.probe_out0(reset),
.probe_out1(in0),
.probe_out2(in1)
);
top_fsm tc(.clk_100MHz(Clk_100MHz),.reset(reset),.out(out),.curr_s(curr_s));
endmodule
