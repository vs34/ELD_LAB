`timescale 1ns / 1ps

module vio_wrapper(
    input clk100mhz
    );
    wire reset;
    wire [3:0] count;
    vio v1(
        .clk(clk100mhz),
        .probe_in0(count),
        .probe_out0(reset)
    );
    
    top final(.clk100mhz(clk100mhz),.reset(reset),.count(count));
    
endmodule
