`timescale 1ns / 1ps

 module top_counter(
    input clk_100MHz,
    input reset,
    output [7:0] count
    );
    wire clk_8Mhz;
    clk_div_cmt instance_name(.clk_8Mhz(clk_8Mhz),.clk_100MHz(clk_100MHz));     
    wire clk_1hz;
    clk_div_rtl a(.clk_8MHz(clk_8MHz),.clk_1Hz(clk_1Hz));
    counter_8bit Cn(.clk_1hz(clk_1hz), .reset(reset),.count(count));

endmodule



