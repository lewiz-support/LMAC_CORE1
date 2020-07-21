onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+br_sfifo_ip_4x32 -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.br_sfifo_ip_4x32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {br_sfifo_ip_4x32.udo}

run -all

endsim

quit -force
