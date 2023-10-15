`timescale 1ns / 1ps
module testbench;
    reg [8*5-1:0] init;
    wire [8*2-1:0] curr_s;
    counter g6 (.curr_s(curr_s), .init(init));

    initial
    begin
        init = "abcde";
        #5;
        init = "c";
        // Add some delay here or other simulation activities
        // to observe the changes in curr_s.
        #10;
        $finish; // Terminate the simulation
    end

endmodule