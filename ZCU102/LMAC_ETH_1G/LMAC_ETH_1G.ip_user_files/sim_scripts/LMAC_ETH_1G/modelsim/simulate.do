onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L zynq_ultra_ps_e_vip_v1_0_3 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_19 -L axi_sg_v4_1_10 -L axi_dma_v7_1_18 -L xlconstant_v1_1_5 -L proc_sys_reset_v5_0_12 -L gtwizard_ultrascale_v1_7_4 -L gig_ethernet_pcs_pma_v16_1_4 -L xbip_utils_v3_0_9 -L c_reg_fd_v12_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_5 -L xbip_dsp48_addsub_v3_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L c_gate_bit_v12_0_5 -L xbip_counter_v3_0_5 -L c_counter_binary_v12_0_12 -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_16 -L axi_register_slice_v2_1_17 -L axi_protocol_converter_v2_1_17 -L axi_clock_converter_v2_1_16 -L blk_mem_gen_v8_4_1 -L axi_dwidth_converter_v2_1_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.LMAC_ETH_1G xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {LMAC_ETH_1G.udo}

run -all

quit -force
