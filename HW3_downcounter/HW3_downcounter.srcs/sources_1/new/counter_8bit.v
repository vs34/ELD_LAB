`timescale 1ns / 1ps


module counter_8bit(
    input clk_1hz,
    input reset,
    output [7:0] count
    );
    reg [7:0] count_reg = 8'b11111111;
    reg [7:0] count_next;
    always@(posedge clk_1hz or posedge reset)
    begin
        if(reset)
            count_reg <= 0;
        else
            count_reg <= count_next;
    end
    
    always@(*)
    begin
        count_reg = count_next - 1;
    end
    
    assign count = count_reg;
    

endmodule



