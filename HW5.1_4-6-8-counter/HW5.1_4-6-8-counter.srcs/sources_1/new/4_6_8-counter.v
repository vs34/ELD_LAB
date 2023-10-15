`timescale 1ns / 1ps

module counter(
    input clk1hz,
    input reset,
    output reg[3:0] curr_s = 4'b0100
);

    always @(posedge clk1hz or posedge reset) begin
        if (reset) begin
            curr_s <= 4'b0100;
        end else begin
            case (curr_s)
                4'b0100: curr_s <= 4'b0110;
                4'b0110: curr_s <= 4'b1000;
                4'b1000: curr_s <= 4'b0100;
                default: curr_s <= 4'b0100;
            endcase
        end
    end
    
    

endmodule
