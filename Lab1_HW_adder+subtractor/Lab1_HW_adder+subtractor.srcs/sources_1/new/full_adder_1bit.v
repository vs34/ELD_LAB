`timescale 1ns / 1ps

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






