vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl" \
"../../../../clock.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

