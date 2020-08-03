onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib LMAC_ETH_1G_opt

do {wave.do}

view wave
view structure
view signals

do {LMAC_ETH_1G.udo}

run -all

quit -force
