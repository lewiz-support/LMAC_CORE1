onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pktctrl_fifo_ip -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pktctrl_fifo_ip xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pktctrl_fifo_ip.udo}

run -all

endsim

quit -force
