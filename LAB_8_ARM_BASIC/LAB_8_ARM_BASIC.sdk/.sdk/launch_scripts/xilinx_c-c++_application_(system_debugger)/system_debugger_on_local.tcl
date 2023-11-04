connect -url tcp:192.168.226.142:56835
source /home/vs/funtion/verilog/ELD_LAB/LAB_8_ARM_BASIC/LAB_8_ARM_BASIC.sdk/design_test_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685247"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685247"} -index 0
loadhw -hw /home/vs/funtion/verilog/ELD_LAB/LAB_8_ARM_BASIC/LAB_8_ARM_BASIC.sdk/design_test_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685247"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248685247"} -index 0
dow /home/vs/funtion/verilog/ELD_LAB/LAB_8_ARM_BASIC/LAB_8_ARM_BASIC.sdk/Lab8_hello_world/Debug/Lab8_hello_world.elf
configparams force-mem-access 0
bpadd -addr &main
