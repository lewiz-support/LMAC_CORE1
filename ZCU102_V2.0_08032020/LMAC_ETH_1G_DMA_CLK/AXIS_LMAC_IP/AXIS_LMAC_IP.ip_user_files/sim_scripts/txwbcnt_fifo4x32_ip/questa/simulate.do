onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib txwbcnt_fifo4x32_ip_opt

do {wave.do}

view wave
view structure
view signals

do {txwbcnt_fifo4x32_ip.udo}

run -all

quit -force
