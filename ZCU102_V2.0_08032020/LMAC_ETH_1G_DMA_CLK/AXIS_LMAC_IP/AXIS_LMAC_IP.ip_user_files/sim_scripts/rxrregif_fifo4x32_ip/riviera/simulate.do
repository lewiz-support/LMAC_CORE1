onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+rxrregif_fifo4x32_ip -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rxrregif_fifo4x32_ip xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {rxrregif_fifo4x32_ip.udo}

run -all

endsim

quit -force