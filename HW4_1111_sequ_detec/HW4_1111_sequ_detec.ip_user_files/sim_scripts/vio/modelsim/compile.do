vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl" \
"../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

