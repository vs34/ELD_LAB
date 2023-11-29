onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pl_opt

do {wave.do}

view wave
view structure
view signals

do {pl.udo}

run -all

quit -force
