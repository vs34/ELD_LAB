`timescale 1ns / 1ps

module testbench();
    reg clk, s_valid, m_ready;
    reg [31:0] s_data;
    wire m_valid, s_ready;
    wire [31:0] m_data;
    
    topper testing(
        .clk(clk),
        .s_data(s_data),
        .m_data(m_data),
        .s_ready(s_ready),
        .s_valid(s_valid),
        .m_valid(m_valid)
    );

    initial begin
        clk = 0;
        s_valid = 0;
        s_data = 0;
        m_ready = 1;
    end
    always #5 clk = ~clk;
    initial begin
        s_data = 32'b01000000101000000000000000000000;
        s_valid = 1;
        while(s_ready == 0)
            s_valid = 1;
        #5 s_valid = 0;
        @(posedge m_valid);
        #10 $stop;
    end
endmodule
