`timescale 1ns / 1ps

module clk_div_rtl(
    input clk_8MHz,
    output clk_1Hz
    );
    reg [22:0] count_reg = 0;
    reg [22:0] count_next;
    always@(posedge clk_8MHz)
    begin
       count_reg <= count_next;
    end
    
    always@(*)
        count_reg = count_next + 1;
    
    assign clk_1Hz = count_reg[22];
endmodule


