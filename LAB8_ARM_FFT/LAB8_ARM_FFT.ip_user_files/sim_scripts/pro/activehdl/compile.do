vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/ec67/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/8c62/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ip/pro_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/ec67/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/8c62/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ip/pro_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/ec67/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/8c62/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ip/pro_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/ec67/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ipshared/8c62/hdl" "+incdir+../../../../LAB8_ARM_FFT.srcs/sources_1/bd/pro/ip/pro_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/pro/ip/pro_processing_system7_0_0/sim/pro_processing_system7_0_0.v" \
"../../../bd/pro/sim/pro.v" \

vlog -work xil_defaultlib \
"glbl.v"

