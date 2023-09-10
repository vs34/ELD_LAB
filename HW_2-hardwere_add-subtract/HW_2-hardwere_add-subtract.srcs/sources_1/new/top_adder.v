`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 12:46:35
// Design Name: 
// Module Name: top_adder
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


module top_adder (
    input [3:0] inA,
    input [3:0] inB,
    input M, // 0 to add, 1 to subtract
    output [4:0] outsum,
    output neg,
    output of,
    output zerosum
);

    wire carry1, carry2, carry3,carry4;

    full_adder_1bit in0 (
        .M(M),
        .FA1_inA(inA[0]),
        .FA1_inB(inB[0]),
        .FA1_inC(M),
        .FA1_outsum(outsum[0]),
        .FA1_outc(carry1)
    );

    full_adder_1bit in1 (
        .M(M),
        .FA1_inA(inA[1]),
        .FA1_inB(inB[1]),
        .FA1_inC(carry1),
        .FA1_outsum(outsum[1]),
        .FA1_outc(carry2)
    );

    full_adder_1bit in2 (
        .M(M),
        .FA1_inA(inA[2]),
        .FA1_inB(inB[2]),
        .FA1_inC(carry2),
        .FA1_outsum(outsum[2]),
        .FA1_outc(carry3)
    );

    full_adder_1bit in3 (
        .M(M),
        .FA1_inA(inA[3]),
        .FA1_inB(inB[3]),
        .FA1_inC(carry3),
        .FA1_outsum(outsum[3]),
        .FA1_outc(outsum[4])
    );

    assign of = outsum[3] ^ carry3;
    assign neg = outsum[3];
    assign zerosum = (outsum == 5'b00000 | outsum == 5'b10000);
endmodule
