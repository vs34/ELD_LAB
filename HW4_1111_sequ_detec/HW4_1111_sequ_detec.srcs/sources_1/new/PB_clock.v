`timescale 1ns / 1ps


module PB_clock(
    input Clk_1Hz,
    input Inp_0,
    input Inp_1,
    output reg Clk_pb
    );
    wire pb_pulse;
    assign pb_pulse=Inp_0|Inp_1;
    always@(posedge Clk_1Hz)
        Clk_pb<=pb_pulse;
endmodule