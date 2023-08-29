vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl/verilog" "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl" \
"../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/sim/vio_fa.v" \


vlog -work xil_defaultlib \
"glbl.v"

