onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib log_opt

do {wave.do}

view wave
view structure
view signals

do {log.udo}

run -all

quit -force
