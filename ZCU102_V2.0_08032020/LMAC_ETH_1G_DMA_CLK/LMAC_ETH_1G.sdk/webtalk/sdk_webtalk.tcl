webtalk_init -webtalk_dir /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_DMA_CLK/LMAC_ETH_1G.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2019-04-12 08:17:42" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2018.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2018.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211002456_1777503594_210664227_163" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "hpf5eip4am9o39bqedpk54n741" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2018.2_3" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "3" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.4 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3704.079 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.718 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1555082234000" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key isZynq -value "false" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key isZynqMP -value "true" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key Processors -value "7" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key VivadoVersion -value "2018.2" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key Arch -value "zynquplus" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key Device -value "xczu15eg" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key os -value "NA" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key apptemplate -value "NA" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key RecordType -value "HWCreation" -context "sdk\\\\hardware/1555082234000"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key DebugCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1555082262567"
webtalk_transmit -clientid 3234550344 -regid "211002456_1777503594_210664227_163" -xml /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_DMA_CLK/LMAC_ETH_1G.sdk/webtalk/usage_statistics_ext_sdk.xml -html /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_DMA_CLK/LMAC_ETH_1G.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_DMA_CLK/LMAC_ETH_1G.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
