onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rxrbcnt_fifo4x32_ip_opt

do {wave.do}

view wave
view structure
view signals

do {rxrbcnt_fifo4x32_ip.udo}

run -all

quit -force
