`timescale 1ns / 1ps
module tesst_bench;
    reg clk,reset;
    wire [5:0] sec;
    wire[5:0] min;
    top_clock g6 (.clk100mhz(clk),.reset(reset),.clk1sec(sec),.clk1min(min));
    initial
    begin
    clk=1'b0;
    reset = 1'b0;
    end
    always #0.5 clk=~clk;
   // initial
   // begin
   //     end
endmodule
