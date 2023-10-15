`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 09:53:04
// Design Name: 
// Module Name: top_clock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_clock(
    input clk100mhz,
    input reset,
    output [5:0] clk1sec,
    output [5:0] clk1min
    );
    wire clk8mhz;
    clk_wiz m100to8m (.clk8mhz(clk8mhz),.clk100mhz(clk100mhz));
    wire clk1hz;
    clk_div_rtl m8to1h (.clk8mhz(clk8mhz),.clk1hz(clk1hz));
    
    sec calsec(.clk1hz(clk1hz),.reset(reset),.clk1sec(clk1sec));
    min cal(.clk1hz(clk1hz),.reset(reset),.clk1sec(clk1sec),.clk1min(clk1min));
endmodule
