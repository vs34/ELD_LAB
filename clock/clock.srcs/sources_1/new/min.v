`timescale 1ns / 1ps
module min(
    input clk1hz,//1 hz frequency
    input clk1sec,
    input reset,
    output reg [5:0] clk1min = 6'b000000 //1/60 hz frequency
    
    );
    always@(posedge clk1hz)
    begin
        if (clk1sec == 6'b111011)
        begin
            clk1min = clk1min+1;
        end
        if (reset)
        begin
            clk1min = 6'b000000;
        end
        else
        begin
            clk1min = clk1min;
        end
    end
    
endmodule
