onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_reci_opt

do {wave.do}

view wave
view structure
view signals

do {fp_reci.udo}

run -all

quit -force
