`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 10:16:11
// Design Name: 
// Module Name: voi_wrapper
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


module voi_wrapper(
    input clk100mhz
    );
    wire [5:0] clk1sec;
    wire [5:0] clk1min;
    wire reset;
    vio v1 (
        .clk(clk100mhz),
        .probe_in0(clk1sec),
        .probe_in1(clk1min),
        .probe_out0(reset)  
    );
    top_clock main(.clk100mhz(clk100mhz),.reset(reset),.clk1sec(clk1sec),.clk1min(clk1min));
endmodule
