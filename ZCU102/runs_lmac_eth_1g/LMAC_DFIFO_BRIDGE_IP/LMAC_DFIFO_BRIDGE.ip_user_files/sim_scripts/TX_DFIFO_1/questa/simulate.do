onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib TX_DFIFO_opt

do {wave.do}

view wave
view structure
view signals

do {TX_DFIFO.udo}

run -all

quit -force
