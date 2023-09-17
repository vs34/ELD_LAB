vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl/verilog" "+incdir+../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/hdl" \
"../../../../HW4_1111_sequ_detec.srcs/sources_1/ip/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

