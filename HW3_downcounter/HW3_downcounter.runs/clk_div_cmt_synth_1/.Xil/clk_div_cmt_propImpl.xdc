set_property SRC_FILE_INFO {cfile:/home/vs/funtion/LAB3_counter_8bit/LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt.xdc rfile:../../../LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_100MHz]] 0.1
