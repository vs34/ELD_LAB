`timescale 1ns / 1ps
module Vio_wrapper(
input Clk_100M
);
wire reset;
wire [7:0] Count;
vio_0 v1 (
.clk(Clk_100M),
.probe_in0(Count),
.probe_out0(reset)
);

top_counter tc(.clk_100MHz(Clk_100M),.reset(reset),.count(Count));
endmodule

