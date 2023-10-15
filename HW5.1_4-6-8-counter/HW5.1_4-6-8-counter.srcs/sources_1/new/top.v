`timescale 1ns / 1ps

 module top(
    input clk100mhz,
    input reset,
    output [3:0] count
    );
    
    wire clk8mhz;
    clk_wiz cmt(.clk8mhz(clk8mhz),.clk100mhz(clk100mhz));     
    wire clk1hz;
    clk_div_rtl to1(.clk8mhz(clk8mhz),.clk1hz(clk1hz));
    counter base(.clk1hz(clk1hz), .reset(reset),.curr_s(count));

endmodule
