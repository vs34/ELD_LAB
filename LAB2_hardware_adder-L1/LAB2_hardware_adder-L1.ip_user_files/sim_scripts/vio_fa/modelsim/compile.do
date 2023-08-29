vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl/verilog" "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl" \
"../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/sim/vio_fa.v" \


vlog -work xil_defaultlib \
"glbl.v"

