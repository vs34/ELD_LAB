`timescale 1ns / 1ps
// the equation is root(x) + (1/(ln(x)) + 1.5

//The source generates the VALID signal to indicate when the address, data or control information is available.
//The destination generates the READY signal to indicate that it can accept the information.

module topper(
        input clk,
        input [31:0] s_data,
        output [31:0] m_data,
        output s_ready,
        input s_valid,
        output m_ready,
        input m_valid
    );

    // all that will work from the start of the input 
    // roo(x)
    wire root_valid,root_ready;
    wire [31:0] root_x;
    fp_root root_of_x (
        .aclk(clk),
        .s_axis_a_tvalid (s_valid),
        .s_axis_a_tready (s_ready),
        .s_axis_a_tdata (s_data),
        .m_axis_result_tvalid (root_valid),
        .m_axis_result_tready (root_ready),
        .m_axis_result_tdata (root_x)
    );
    
    // 1/ln(x)
        //ln(x)
        wire ln_valid,ln_ready;
        wire [31:0] ln_x;
        fp_log log_of_x (
            .aclk(clk),
            .s_axis_a_tvalid (s_valid),
            .s_axis_a_tready (s_ready),
            .s_axis_a_tdata (s_data),
            .m_axis_result_tvalid (ln_valid),
            .m_axis_result_tready (ln_ready),
            .m_axis_result_tdata (ln_x)
        );
   // 1/ln_x
   wire by_ln_valid,by_ln_ready;
   wire [31:0] by_ln_x;
   fp_reci by_lnx (
         .aclk(clk),
         .s_axis_a_tvalid (ln_valid),
         .s_axis_a_tready (ln_ready),
         .s_axis_a_tdata (ln_x),
         .m_axis_result_tvalid (by_ln_valid),
         .m_axis_result_tready (by_ln_ready),
         .m_axis_result_tdata (by_ln_x)
    );
    //final addidng all
    wire s1_valid,s1_ready;
    wire [31:0] s1;
    fp_add root_x_and_byln_x (
        .aclk(clk),
        .s_axis_a_tvalid (by_ln_valid),
        .s_axis_a_tready (by_ln_ready),
        .s_axis_a_tdata (by_ln_x),
        .s_axis_b_tvalid (root_valid),
        .s_axis_b_tready (root_ready),
        .s_axis_b_tdata (root_x),
        .m_axis_result_tvalid (s1_valid),
        .m_axis_result_tready (s1_ready),
        .m_axis_result_tdata (s1)
    );
    //final addidng all
    fp_add root_s1_and_cons (
        .aclk(clk),
        .s_axis_a_tvalid (s1_valid),
        .s_axis_a_tready (s1_ready),
        .s_axis_a_tdata (32'b01000000101000000000000000000000),
        .s_axis_b_tvalid (s1_valid),  // Corrected this line
        .s_axis_b_tready (s1_ready),  // Corrected this line
        .s_axis_b_tdata (s1),    // Corrected this line
        .m_axis_result_tvalid (m_valid),
        .m_axis_result_tready (m_ready),
        .m_axis_result_tdata (m_data)
    );
endmodule