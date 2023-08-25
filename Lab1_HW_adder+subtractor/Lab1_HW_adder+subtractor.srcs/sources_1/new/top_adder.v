module top_adder (
    input [3:0] inA,
    input [3:0] inB,
    input M, // 0 to add, 1 to subtract
    output [3:0] outsum,
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
        .FA1_outc(carry4)
    );

    assign of = carry4 ^ carry3;
    assign neg = outsum[3];
    assign zerosum = (outsum == 4'b0000);
endmodule
