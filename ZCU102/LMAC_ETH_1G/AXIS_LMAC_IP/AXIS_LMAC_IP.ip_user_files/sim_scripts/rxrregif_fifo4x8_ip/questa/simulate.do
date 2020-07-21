onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rxrregif_fifo4x8_ip_opt

do {wave.do}

view wave
view structure
view signals

do {rxrregif_fifo4x8_ip.udo}

run -all

quit -force
