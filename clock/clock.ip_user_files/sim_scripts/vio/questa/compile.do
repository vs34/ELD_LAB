vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../clock.srcs/sources_1/ip/vio/hdl" \
"../../../../clock.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

