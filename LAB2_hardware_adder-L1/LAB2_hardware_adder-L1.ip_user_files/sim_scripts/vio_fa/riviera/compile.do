transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/vs/funtion/verilog/ELD_LAB/LAB2_hardware_adder-L1/LAB2_hardware_adder-L1.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl/verilog" "+incdir+../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/hdl" -l xil_defaultlib \
"../../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/sim/vio_fa.v" \


vlog -work xil_defaultlib \
"glbl.v"

