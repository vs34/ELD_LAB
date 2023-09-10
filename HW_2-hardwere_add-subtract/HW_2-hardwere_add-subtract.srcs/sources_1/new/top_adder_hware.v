`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2023 09:52:42 AM
// Design Name: 
// Module Name: top_adder_hware
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


module top_adder_hware(
    input clock
    );
    wire [3:0] inA, inB;
    wire [4:0] outsum;
    wire of;
    wire neg;
    wire zerosum;
    wire M;
    vio_0 (
    .clk(clock),
    // input wire clk
    .probe_in0(outsum),// input wire [4 : 0] probe_in0
    .probe_in1(of),
    .probe_in2(neg),
    .probe_in3(zerosum),
    .probe_out0(inA), // output wire [3 : 0] probe_outo
    .probe_out1(inB), // output wire [3 : 0] probe_outi
    .probe_out2(M)
    );

    top_adder ta(.inA(inA), .inB(inB), .outsum(outsum),.M(M),.of(of),.neg(neg),.zerosum(zerosum));

endmodule
    

