`timescale 1ns / 1ps
module detec_1111(
    input wire Clk_pb,
    input wire clk,
    input wire reset,
    output reg out = 1'b0,
    output reg[2:0] curr_s = 1'b000
    );
    always@(posedge clk & (curr_s != 3'b100))
    begin
            if(Clk_pb)
            begin
                curr_s = curr_s + 1;
            end
            else
            begin
                curr_s = 3'b000;
            end
        end
    always@(*)
    begin
            if(curr_s == 3'b100)
            begin
                out = 1'b1;
                if(Clk_pb)
                begin
                    curr_s = 3'b100;
                end
                else
                begin
                    curr_s = 3'b000;
                end
            end
            else
            begin
                out = 1'b0;
            end
        end
      always@(reset)
      begin
            curr_s = 3'b000;
            out = 1'b0;
      end
endmodule
