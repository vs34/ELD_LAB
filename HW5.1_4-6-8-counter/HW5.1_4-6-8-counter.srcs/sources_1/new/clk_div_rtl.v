`timescale 1ns / 1ps
module clk_div_rtl(
    input clk8mhz,
    output clk1hz
    );
    reg [22:0]  count_reg = 23'b00000000000000000000000;
    reg [22:0] count_next;
    always@(posedge clk8mhz)
    begin
        count_reg <= count_next;
    end
    always@(*)
        count_next = count_reg + 1;
    assign clk1hz = count_reg[22];
endmodule
