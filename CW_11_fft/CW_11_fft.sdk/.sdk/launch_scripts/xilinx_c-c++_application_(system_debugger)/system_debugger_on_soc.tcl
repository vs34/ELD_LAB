#If required use the below command and launch symbol server from an external shell.
#symbol_server -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.226.142:65289]
source /home/vs/funtion/verilog/ELD_LAB/CW_11_fft/CW_11_fft.sdk/pl_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248722230" && level==0} -index 1
fpga -file /home/vs/funtion/verilog/ELD_LAB/CW_11_fft/CW_11_fft.sdk/pl_wrapper_hw_platform_0/pl_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
loadhw -hw /home/vs/funtion/verilog/ELD_LAB/CW_11_fft/CW_11_fft.sdk/pl_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
ps7_init
ps7_post_config
configparams force-mem-access 0
bpadd -addr &main
