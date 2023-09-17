`timescale 1ns / 1ps
module test_bench;
    reg clk,in;
    wire out;
    wire[2:0] curr_s;
    detec_1111 g6 (.clk(clk),.Clk_pb(in),.out(out),.curr_s(curr_s));
    initial
    begin
    clk=1'b0;
    in=1'b0;
    end
    always #5 clk=~clk;
    initial
    begin
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
            in = 1;
            #5; 
            in = 1;
            #5; 
            in = 0;
            #5 
            in = 1;
        end
endmodule
