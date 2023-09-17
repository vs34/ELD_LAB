`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 09:25:34
// Design Name: 
// Module Name: fsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fsm(
    input wire clk,
    input wire in,
    output reg out
    );
    parameter S0 = 3'b000, S1 = 3'b001,S2 = 3'b010, S4 = 3'b011,S5 = 3'b100;
    reg [2:0] curr_S = 3'b000,next_S;
    always@(posedge clk)
    begin
        if (curr_S == 3'b000)
        begin
            if (in == 1)
            begin
                out = 0;
                curr_S = 3'b001;
            end else
            begin
                out = 0;
                curr_S = 3'b000;
             end
        end
        else if (curr_S == 3'b001)
        begin
            if (in == 1)
            begin
                out = 0;
                curr_S = 3'b010;
            end
            else
            begin
                out = 0;
                curr_S = 3'b000;
            end
        end
        else if (curr_S == 3'b010)
        begin
            if (in == 1)
            begin
                out = 0;
                curr_S = 3'b010;
            end
            else
            begin
                out = 0;
                curr_S = 3'b011;
            end
        end
        else if (curr_S == 3'b011)
        begin
            if (in == 1)
            begin
                out = 0;
                curr_S = 3'b100;
            end
            else
            begin
                out = 0;
                curr_S = 3'b000;
            end
        end
        else
        begin
            out = 1;
            curr_S = 3'b000;
         end
//         curr_S <= next_S;
    end
    
endmodule
