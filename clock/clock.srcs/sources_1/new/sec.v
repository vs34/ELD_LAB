`timescale 1ns / 1ps
module sec(
    input clk1hz,//1 hz frequency
    input reset,
    output reg [5:0] clk1sec = 6'b000000 //1/60 hz frequency
    
    );
    always@(posedge clk1hz)
    begin
        if (reset)
        begin
            clk1sec = 6'b000000;
        end
        
        if (clk1sec == 6'b111011)
        begin
            clk1sec = 6'b000000;
        end

        else
        begin
            clk1sec = clk1sec+1;

        end 
    end
    
endmodule
