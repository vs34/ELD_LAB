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
    wire [3:0] InA, InB;
    wire [4:0] OutSum;
    vio_fa v1 (
    .clk(Clock),
    // input wire clk
    .probe_in0(OutSum),// input wire [4 : 0] probe_in0
    .probe_out0(InA), // output wire [3 : 0] probe_outo
    .probe_out1(InB) // output wire [3 : 0] probe_outi
    );

    top_adder ta(.inA(InA), .inB(InB), .outsum(OutSum));

endmodule
    

