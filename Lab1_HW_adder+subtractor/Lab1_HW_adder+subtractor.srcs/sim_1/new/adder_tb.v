`timescale 1ns / 1ps
module adder_tb();
    reg [3:0] InA, InB;
    wire [3:0] OutSum;
    wire neg;
    reg M;
    wire of;
    wire aerosum;
    top_adder tb0(.inA(InA), .inB(InB), .outsum(OutSum),.M(M),.of(of),.neg(neg),.zerosum(zerosum));

    initial begin
    //addition
           InA = 4'b0000; InB = 4'b0000;  M = 1'b0;
        #5 InA = 4'b0100; InB = 4'b0110;  M = 1'b0;
        #5 InA = 4'b0101; InB = 4'b0111;  M = 1'b0;
        #5 InA = 4'b0111; InB = 4'b0111;  M = 1'b0;
        #5 InA = 4'b0001; InB = 4'b0010;  M = 1'b0;
        #5 InA = 4'b0101; InB = 4'b0101;  M = 1'b0;
        #5 InA = 4'b0010; InB = 4'b0011;  M = 1'b0;
        #5 InA = 4'b0010; InB = 4'b0000;  M = 1'b0;
        #5 InA = 4'b0101; InB = 4'b0001;  M = 1'b0;
     //subtraction 
        #5 InA = 4'b0000; InB = 4'b0000;  M = 1'b1;
        #5 InA = 4'b0100; InB = 4'b0110;  M = 1'b1;
        #5 InA = 4'b0101; InB = 4'b0111;  M = 1'b1;
        #5 InA = 4'b0111; InB = 4'b0111;  M = 1'b1;
        #5 InA = 4'b0001; InB = 4'b0010;  M = 1'b1;
        #5 InA = 4'b0101; InB = 4'b0101;  M = 1'b1;
        #5 InA = 4'b0010; InB = 4'b0011;  M = 1'b1;
        #5 InA = 4'b0010; InB = 4'b0000;  M = 1'b1;
        #5 InA = 4'b0101; InB = 4'b0001;  M = 1'b1;
    end
endmodule
