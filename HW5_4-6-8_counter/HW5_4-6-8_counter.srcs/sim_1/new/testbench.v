`timescale 1ns / 1ps
module testbench;
    reg [16*8 - 1 :0] init;
    wire [5*8 - 1:0] curr_s;
    counter g6 (.curr_s(curr_s),.init(init));

    initial
    begin
    init = "abcde";
    #5
    init = "c";
end

endmodule