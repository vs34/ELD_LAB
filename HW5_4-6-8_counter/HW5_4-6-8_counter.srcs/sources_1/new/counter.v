`timescale 1ns / 1ps

module counter(
    input clk1hz,
    input reset,
    output reg[3:0] curr_s = 4'b0100
    );
    
    always@(posedge clk1hz)
    if (curr_s == 4'b0100)
    begin
        curr_s = 4'b0110;
    end
    else if (curr_s  == 4'b0110)
    begin
        curr_s = 4'b1000;
    end
    else
    begin
        curr_s = 4'b0100;
    end
    always@(reset == 1'b1) curr_s = 4'b0100;
endmodule
