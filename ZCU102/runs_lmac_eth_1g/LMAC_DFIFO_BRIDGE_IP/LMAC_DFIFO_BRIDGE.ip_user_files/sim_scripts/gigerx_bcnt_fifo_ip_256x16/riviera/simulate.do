onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gigerx_bcnt_fifo_ip_256x16 -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gigerx_bcnt_fifo_ip_256x16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gigerx_bcnt_fifo_ip_256x16.udo}

run -all

endsim

quit -force
