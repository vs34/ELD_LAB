`timescale 1ns / 1ps



module counter(
    input [8*5-1:0] init,
    output [8*2-1:0] curr_s
);
    assign curr_s = init & init>>1;
endmodule
