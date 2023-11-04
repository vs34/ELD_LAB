`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 11:04:54
// Design Name: 
// Module Name: main
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
//  Z = (X/Y) + ROOT((2*LN(T))/Y)
// T > Y > X  = ALWAYS POSITIVE INT

module main(
    input clk,
    input [31:0] x,
    input m_x_valid,
    output s_x_ready,
    input [31:0] y,
    input m_y_valid,
    output s_y_ready,
    input [31:0] t,
    input m_t_valid,
    output s_t_ready,
    input s_ready,
    output m_valid,
    output [31:0] z
    );
    // x/y
    wire [31:0] x_by_y;
    wire x_by_y_valid,x_by_y_ready;
    wire y_use1_ready;
    
    by XbyY(
        .aclk(clk),
        .s_axis_a_tvalid(m_x_valid),
        .s_axis_a_tready(s_x_ready),
        .s_axis_a_tdata(x),
        .s_axis_b_tvalid(m_y_valid),
        .s_axis_b_tready(y_use1_ready),
        .s_axis_b_tdata(y),
        .m_axis_result_tvalid(x_by_y_valid),
        .m_axis_result_tready(x_by_y_ready),  //chang this to one
        .m_axis_result_tdata(x_by_y)
    );
    
    //ln(t)
    wire [31:0] ln_t;
    wire ln_t_valid;
    wire ready_ln_t;
    
    log log_of_t(
        .aclk(clk),
        .s_axis_a_tvalid(m_t_valid),
        .s_axis_a_tready(s_t_ready),
        .s_axis_a_tdata(t),
        .m_axis_result_tvalid(ln_t_valid),
        .m_axis_result_tready(ready_ln_t),
        .m_axis_result_tdata(ln_t)
    );

    //2*ln(t)
    
    wire [31:0] lnt_into_2;
    wire temp;
    wire into_valid,into_ready;
    mul log_t_X_2(
        .aclk(clk),
        .s_axis_a_tvalid(1),
        .s_axis_a_tready(temp),
        .s_axis_a_tdata(32'b01000000000000000000000000000000),
        .s_axis_b_tvalid(ln_t_valid),
        .s_axis_b_tready(ready_ln_t),
        .s_axis_b_tdata(ln_t),
        .m_axis_result_tvalid(into_valid),
        .m_axis_result_tready(into_ready),
        .m_axis_result_tdata(lnt_into_2)
    );    
    
    //lnt_into_2/y
    
    wire [31:0] lnt2_by_Y;
    wire y_use2_ready;
    wire lnt2_by_y_valid,lnt2_by_y_ready;
    by ln_t2_by_Y(
        .aclk(clk),
        .s_axis_a_tvalid(into_valid),
        .s_axis_a_tready(into_ready),
        .s_axis_a_tdata(lnt_into_2),
        .s_axis_b_tvalid(m_y_valid),
        .s_axis_b_tready(y_use2_ready),
        .s_axis_b_tdata(y),
        .m_axis_result_tvalid(lnt2_by_y_valid),
        .m_axis_result_tready(lnt2_by_y_ready),
        .m_axis_result_tdata(lnt2_by_Y)
    );
    
    //Root(of pre)
    
    wire [31:0] onlyroot;
    wire onlyroot_valid,onlyroot_ready;
    
    root root_of_lnt2_byY(
        .aclk(clk),
        .s_axis_a_tvalid(lnt2_by_y_valid),
        .s_axis_a_tready(lnt2_by_y_ready),
        .s_axis_a_tdata(lnt2_by_Y),
        .m_axis_result_tvalid(onlyroot_valid),
        .m_axis_result_tready(onlyroot_ready),
        .m_axis_result_tdata(onlyroot)
    );
    
    //onlyroot + x_by_y
    
    add final_sum(
        .aclk(clk),
        .s_axis_a_tvalid(onlyroot_valid),  //I
        .s_axis_a_tready(onlyroot_ready), //O
        .s_axis_a_tdata(onlyroot),       //I
        .s_axis_b_tvalid(x_by_y_valid),
        .s_axis_b_tready(x_by_y_ready),
        .s_axis_b_tdata(x_by_y),
        .m_axis_result_tvalid(m_valid),
        .m_axis_result_tready(s_ready),
        .m_axis_result_tdata(z)
    );
    assign s_y_ready = y_use1_ready || y_use2_ready;

endmodule
