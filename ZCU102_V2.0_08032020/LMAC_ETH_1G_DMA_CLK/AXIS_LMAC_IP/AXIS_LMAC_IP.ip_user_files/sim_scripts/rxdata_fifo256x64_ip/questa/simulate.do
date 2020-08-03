onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rxdata_fifo256x64_ip_opt

do {wave.do}

view wave
view structure
view signals

do {rxdata_fifo256x64_ip.udo}

run -all

quit -force
