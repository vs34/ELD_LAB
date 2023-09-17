`timescale 1ns / 1ps

 module top_fsm(
    input clk_100MHz,
    input reset,
    output [2:0] curr_s,
    output out
    );
    wire clk_8MHz;
    clk_wiz instance_name(.clk_8MHz(clk_8MHz),.clk_100MHz(clk_100MHz));     
    wire clk_1Hz, Clk_pb;
    PB_clock i(.Inp_1(in1),.Inp_0(in0),.Clk_pb(Clk_pb),.Clk_1Hz(clk_1Hz));

    clk_div_rtl a(.clk_8MHz(clk_8MHz),.clk_1Hz(clk_1Hz));
    detec_1111 Cn(.clk(clk_1Hz), .reset(reset),.out(out),.curr_s(curr_s),.Clk_pb(Clk_pb));

endmodule



