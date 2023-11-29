onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pro_opt

do {wave.do}

view wave
view structure
view signals

do {pro.udo}

run -all

quit -force
