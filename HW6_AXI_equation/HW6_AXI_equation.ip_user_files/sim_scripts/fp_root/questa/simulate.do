onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_root_opt

do {wave.do}

view wave
view structure
view signals

do {fp_root.udo}

run -all

quit -force
