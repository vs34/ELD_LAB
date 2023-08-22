`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 09:47:48 AM
// Design Name: 
// Module Name: adder_tb
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

module adder_tb();
    reg [3:0] InA, InB;
    wire [4:0] OutSum;
    top_adder tb0(.inA(InA), .inB(InB), .outsum(OutSum));

    initial begin
        InA = 4'b0000;
        InB = 4'b0000;
        #5 InA = 4'b0100; InB = 4'b0110;
        #5 InA = 4'b0101; InB = 4'b0111;
        #5 InA = 4'b0111; InB = 4'b0111;
        #5 InA = 4'b1111; InB = 4'b0000;
        #5 InA = 4'b0111; InB = 4'b0001;
    end
endmodule
