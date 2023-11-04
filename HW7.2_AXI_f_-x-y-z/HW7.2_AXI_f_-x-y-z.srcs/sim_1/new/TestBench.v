`timescale 1ns / 1ps

module testbench;

    reg clk;
    reg [31:0] x;
    reg m_x_valid;
    reg [31:0] y;
    reg m_y_valid;
    reg [31:0] t;
    reg m_t_valid;
    wire s_x_ready;
    wire s_y_ready;
    wire s_t_ready;
    reg s_ready;
    wire [31:0] z;
    wire m_valid;

    main testing (
        .clk(clk),
        .x(x),
        .m_x_valid(m_x_valid),
        .s_x_ready(s_x_ready),
        .y(y),
        .m_y_valid(m_y_valid),
        .s_y_ready(s_y_ready),
        .t(t),
        .m_t_valid(m_t_valid),
        .s_t_ready(s_t_ready),
        .s_ready(s_ready),
        .m_valid(m_valid),
        .z(z)
    );

    initial begin
        clk = 0;
        x = 32'b01000000101000000000000000000000;
        y = 32'b01000000101000000000000000000000;
        t = 32'b01000000101000000000000000000000;
        m_x_valid = 0;
        m_y_valid = 0;
        m_t_valid = 0;
        s_ready = 1;
    end
    // Clock generation
    always #5 clk = ~clk;

    initial begin
        x = 32'b01000000101000000000000000000000;
        m_x_valid = 1;
        while (s_x_ready == 0)
            m_x_valid = 1;
        // Drive x_valid signal
        #5 m_x_valid = 0;
    end

    initial begin
        y = 32'b01000000101000000000000000000000;
        m_y_valid = 1;
        while (s_y_ready == 0)
            m_y_valid = 1;
        // Drive y_valid signal
        #5 m_y_valid = 0;
    end 

    initial begin
        t = 32'b01000000101000000000000000000000;
        m_t_valid = 1;
        while (s_t_ready == 0)
            m_t_valid = 1;
        // Drive x_valid signal
        #5 m_t_valid = 0;
        // Stop simulation
        #10 $stop;
    end
endmodule
