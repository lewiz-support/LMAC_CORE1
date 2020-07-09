onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RX_DFIFO_opt

do {wave.do}

view wave
view structure
view signals

do {RX_DFIFO.udo}

run -all

quit -force
