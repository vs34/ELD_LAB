`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 09:57:16
// Design Name: 
// Module Name: test
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


module test;
    reg clk,in;
    wire out;
    fsm g6 (.clk(clk),.in(in),.out(out));
    initial
    begin
    clk=1'b0;
    in=1'b0;
    end
    always #5 clk=~clk;
    initial
    begin
            // values for a and b
            in = 1;
            #5; // wait for period 
            in = 1;
            #5; // wait for period 

            in = 0;
            #5; // wait for period 
            in = 1;
            #5; // wait for period 
            in = 1;
            #5; // wait for period 
            in = 0;
            #5 
            in = 1;
        end
endmodule
