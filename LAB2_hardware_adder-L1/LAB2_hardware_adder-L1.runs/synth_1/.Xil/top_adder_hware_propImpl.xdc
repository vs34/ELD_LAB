set_property SRC_FILE_INFO {cfile:/home/vs/funtion/verilog/ELD_LAB/LAB2_hardware_adder-L1/LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/vio_fa.xdc rfile:../../../LAB2_hardware_adder-L1.gen/sources_1/ip/vio_fa/vio_fa.xdc id:1 order:EARLY scoped_inst:v1} [current_design]
set_property SRC_FILE_INFO {cfile:/home/vs/funtion/verilog/ELD_LAB/LAB2_hardware_adder-L1/LAB2_hardware_adder-L1.srcs/constrs_1/new/zed_cf.xdc rfile:../../../LAB2_hardware_adder-L1.srcs/constrs_1/new/zed_cf.xdc id:2} [current_design]
current_instance v1
set_property src_info {type:SCOPED_XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id CDC-4 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*probe_in_reg_reg*"}]]  -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical -filter {NAME =~ "*data_int_sync1_reg*"}]]  -user "vio" -description {The path has combinational circuit. But from hardware prospective the design works perfectly and the signals crossing happen after a very long time from the source has the value.} -tags "1050886" -scope -internal
set_property src_info {type:SCOPED_XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter { NAME =~  "*Hold_probe_in*" &&  IS_SEQUENTIAL } ]]  -to [get_pins -filter {REF_PIN_NAME=~CE} -of_objects [get_cells -hierarchical -filter { NAME =~  "*PROBE_IN_INST/probe_in_reg*" && IS_SEQUENTIAL} ]]  -user "vio" -description {The path has combinational circuit. But from hardware prospective the design works perfectly and the signals crossing happen after a very long time from the source has the value.} -tags "1050886" -scope -internal
current_instance
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {clock}];  # "GCLK"
