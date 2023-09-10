vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt_clk_wiz.v" \
"../../../../LAB3_counter_8bit.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt.v" \

vlog -work xil_defaultlib \
"glbl.v"

