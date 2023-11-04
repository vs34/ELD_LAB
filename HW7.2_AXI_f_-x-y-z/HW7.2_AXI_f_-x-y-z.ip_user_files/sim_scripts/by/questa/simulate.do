onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib by_opt

do {wave.do}

view wave
view structure
view signals

do {by.udo}

run -all

quit -force
