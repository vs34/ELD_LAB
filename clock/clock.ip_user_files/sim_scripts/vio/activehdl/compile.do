vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl" \
"../../../../clock.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

