onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib root_opt

do {wave.do}

view wave
view structure
view signals

do {root.udo}

run -all

quit -force
