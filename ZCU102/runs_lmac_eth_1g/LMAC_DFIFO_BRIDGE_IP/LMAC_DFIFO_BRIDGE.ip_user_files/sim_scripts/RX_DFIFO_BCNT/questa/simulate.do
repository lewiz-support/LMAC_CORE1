onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RX_DFIFO_BCNT_opt

do {wave.do}

view wave
view structure
view signals

do {RX_DFIFO_BCNT.udo}

run -all

quit -force
