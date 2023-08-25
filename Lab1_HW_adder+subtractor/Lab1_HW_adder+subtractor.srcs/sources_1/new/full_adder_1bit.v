`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 09:12:35 AM
// Design Name: 
// Module Name: full_adder_1bit
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


module full_adder_1bit(
    input M,
    input FA1_inA,
    input FA1_inB,
    input FA1_inC,
    output FA1_outsum,
    output FA1_outc
    );
    
    assign FA1_outsum = FA1_inA ^ (FA1_inB ^ M) ^ FA1_inC;
    assign FA1_outc = ((FA1_inA ^ (FA1_inB ^ M)) & FA1_inC) | (FA1_inA & (FA1_inB ^ M));
endmodule
