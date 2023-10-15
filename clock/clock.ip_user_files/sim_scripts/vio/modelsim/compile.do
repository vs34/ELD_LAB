vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl" \
"../../../../clock.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

