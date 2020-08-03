onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib txwregif_fifo4x8_ip_opt

do {wave.do}

view wave
view structure
view signals

do {txwregif_fifo4x8_ip.udo}

run -all

quit -force
