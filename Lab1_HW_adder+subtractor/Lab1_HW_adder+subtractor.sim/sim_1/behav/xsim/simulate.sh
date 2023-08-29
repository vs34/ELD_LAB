#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Aug 29 09:12:32 IST 2023
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim adder_tb_behav -key {Behavioral:sim_1:Functional:adder_tb} -tclbatch adder_tb.tcl -view /home/vs/funtion/verilog/ELD_LAB/Lab1_HW_adder+subtractor/adder_tb_behav.wcfg -log simulate.log"
xsim adder_tb_behav -key {Behavioral:sim_1:Functional:adder_tb} -tclbatch adder_tb.tcl -view /home/vs/funtion/verilog/ELD_LAB/Lab1_HW_adder+subtractor/adder_tb_behav.wcfg -log simulate.log

