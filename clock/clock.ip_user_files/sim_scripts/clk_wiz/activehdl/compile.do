vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../clock.srcs/sources_1/ip/clk_wiz/clk_wiz_clk_wiz.v" \
"../../../../clock.srcs/sources_1/ip/clk_wiz/clk_wiz.v" \


vlog -work xil_defaultlib \
"glbl.v"

