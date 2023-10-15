`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 09:40:30
// Design Name: 
// Module Name: clk_div_rtl
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


module clk_div_rtl(
    input clk8mhz,
    output clk1hz
    );
    reg [22:0]  count_reg = 23'b00000000000000000000000;
    reg [22:0] count_next;
    always@(posedge clk8mhz)
    begin
        count_reg <= count_next;
    end
    always@(*)
        count_next = count_reg + 1;
    assign clk1hz = count_reg[22];
endmodule
