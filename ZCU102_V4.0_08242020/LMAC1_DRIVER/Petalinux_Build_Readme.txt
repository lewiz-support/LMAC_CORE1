//
// Copyright (C) 2020 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//

***BUILDING PETALINUX 2018.2 IMAGE FOR ZCU102 FPGA BOARD USING LMAC1 DRIVER

- Download the zip file Ubuntu_Desktop_Release_2018_3_1.zip and copy it to your desired directory:
	https://www.xilinx.com/member/forms/download/xef.html?filename=Ubuntu_Desktop_Release_2018_3_1.zip
	
- Extract the zip file contents using following command:
	unzip Ubuntu_Desktop_Release_2018_3_1.zip

- Download petalinux with version same as your vivado version and download the ZCU102 BSP and copy it to your desired directory: 
	https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools/2019-2.html

- Install petalinux.

- Check if PETALINUX environment variable is set to the petalinux installation path by using below command.
	$ echo $PETALINUX

- Create the Petalinux project with the below command
	$ petalinux-create -t project -s <path to the downloaded zcu102 bsp>/xilinx-zcu102-v2018.2-final.bsp
	Note: In the above command, give the BSP path & file according to the board revision.

- Change the directory to created Petalinux project. (For example it will look like "xilinx-zcu102-2018.2", and it may vary according to your petalinux version).
	$ cd <petalinux-project>

- Configure the Petalinux project with the hardware description file from the .../ZCU102_V4.0_08242020/LMAC_ETH_1G/LMAC_ETH_1G.sdk/ directory.

	GOTO: .../Ubuntu_Desktop_Release_2018_3/HDF_file/
	DELETE FILE: design_1_wrapper.hdf
	
	GOTO: .../xilinx-zcu102-2018.2/hardware/xilinx-zcu102-2018.2/xilinx-zcu102-2018.2.sdk/
	DELETE FILE: design_1_wrapper.hdf
	
	GOTO: .../xilinx-zcu102-2018.2/hardware/xilinx-zcu102-2018.2/implementation/
	DELETE FILE: download.bit
	
	COPY FILE: .../ZCU102_V4.0_08242020/LMAC_ETH_1G/LMAC_ETH_1G.sdk/LMAC_ETH_1G_wrapper.hdf
	PASTE TO: .../Ubuntu_Desktop_Release_2018_3/HDF_file/
	PASTE TO: .../xilinx-zcu102-2018.2/hardware/xilinx-zcu102-2018.2/xilinx-zcu102-2018.2.sdk/
	
	COPY FILE: .../ZCU102_V4.0_08242020/LMAC_ETH_1G/LMAC_ETH_1G.runs/impl_1/LMAC_ETH_1G_wrapper.bit
	PASTE TO: .../xilinx-zcu102-2018.2/hardware/xilinx-zcu102-2018.2/implementation/
	
- Now configure the Petalinux using PetaLinux configuration wizard.
	$ petalinux-config --get-hw-description=<path to hdf file directory>
	
- Enable the SD card for rootfs:
	- Image Packaging Configuration -> Root file system type -> SD card

- Modify the bootargs as below.
	- petalinux-config
	- DTG Settings -> Kernel Bootargs -> [ ] generate boot args automatically.
	- Set following kernel bootargs (by copying below as is)
	  earlycon clk_ignore_unused earlyprintk root=/dev/mmcblk0p2 rw rootwait cma=1024M
	  
- Save and Exit the wizard.

- Wait until PetaLinux reconfigures the project.

- Clean the existing Boot loader image. This is to ensure that the boot loader is recreated in sync with new hardware design.
	$ petalinux-build -c bootloader -x distclean

	
	
***CONFIGURING THE KERNEL
- Change directory to <xilinx-zcu102-2018.2> and enter the following command to configure the kernel:
	$ petalinux-config -c kernel
- Following are some of the mandatory configurations needed for successful booting of the linux.
	- Disable initramfs in kernel configuration GUI at 'General setup -> Initial RAM file system and RAM disk (initramfs/initrd) support'
- Following settings are required to enable Input devices, multimedia and USB related settings
	- Device Drivers -> Input device support -> Event interface'
	- Device Drivers -> Input device support -> Keyboards'
	- Device Drivers -> Input device support -> Mouse interface'
	- Device Drivers -> Multimedia support -> Media USB Adapters->USB Video Class (UVC)
	- Device Drivers -> Multimedia support -> Cameras/video grabbers support'
	- Device Drivers -> Multimedia support -> V4L platform devices
	- Device Drivers -> USB support and enable all required classes
	- Device Drivers -> HID support-> Generic HID driver
	- Device Drivers -> HID support-> USB HID support-> USB HID transport layer
	- Disabling the PMBUS PMIC so that power demo can use them without any issues
	- Device Drivers -> Hardware Monitoring support -> PMBus support -> Maxim MAX20751'
	- Enable the PHY settings
	- Device Drivers -> PHY Subsystem'
	- Device Drivers -> PHY Subsystem -> Xilinx ZynqMP PHY driver'
	- Disable the PCI settings
	- 'Bus Support -> PCI support' This needs to be disabled for this version
	- Enable the sound related settings:
	- Device Drivers -> Sound card support'
	- Device Drivers -> Sound card support -> Advanced Linux Sound Architecture' enabling ALSA support
	- Kernel hacking -> Tracers -> Kernel Function Tracer
	- Save and Exit the kernel configuration.

	
	
***Configure the project by adding the LMAC1_DRIVER
- Enable the lmac1 module.
	$ petalinux-create -t modules -n lmac1 --enable
- Copy the driver file for probing.
	- COPY FILE: .../ZCU102_V4.0_08242020/LMAC1_DRIVER/lmac1.c
	  PASTE (AND REPLACE) TO: .../xilinx-zcu102-2018.2/project-spec/meta-user/recipes-modules/lmac1/files/
	- COPY FILE: .../ZCU102_V4.0_08242020/LMAC1_DRIVER/system-user.DTSI
	  PASTE (AND REPLACE) TO: .../xilinx-zcu102-2018.2/project-spec/meta-user/recipes-bsp/device-tree/files/

	  
	  
***CREATING BOOTABLE LINUX IMAGES
- Change directory to <xilinx-zcu102-2018.2> and enter the following command to build Linux Images. Output binaries can be found in .../xilinx-zcu102-2018.2/images/linux directory.
	$ petalinux-build
- Wait until the project builds.
- Create BOOT.bin (with above created binaries) using below command.
	$ petalinux-package --boot --fsbl images/linux/zynqmp_fsbl.elf --fpga images/linux/system.bit --u-boot images/linux/u-boot.elf

	
	
***COPY IMAGES TO SD CARD
- Check if the card is connected
	$ sudo fdisk -l
- Format SD card partitions ('mmcblk0p1' and 'mmcblk0p2' are system dependent and may vary).
	$ sudo mkfs.vfat -F 32 -n boot /dev/mmcblk0p1 
	$ sudo mkfs.ext4 -L root /dev/mmcblk0p2 
- Mount the SD Card on /mnt/ directory
	$ sudo mount /dev/mmcblk0p1 /mnt/
- Copy Petalinux HW Image on the SD Card (GOTO Dir .../xilinx-zcu102-2018.2/images/linux/)
	$ sudo cp BOOT.bin /mnt/
	$ sudo cp image.ub /mnt/
- Unmount the SD Card
	$ sudo umount /dev/mmcblk0p1
- Mount the SD Card
	$ sudo mount /dev/mmcblk0p2 /mnt/
- Copy ROOT DIRECTORY on the SD Card (GOTO Dir .../xilinx-zcu102-2018.2/images/linux/)
	$ sudo cp rootfs.cpio /mnt/
	$ cd /mnt/
	$ sudo cpio -idv < rootfs.cpio
- Copy LMAC DRIVER on the SD Card (GOTO Dir .../xilinx-zcu102-2018.2/build/tmp/work/zcu102_zynqmp-xilinx-linux/lmac1/1.0-r0/)
	$ sudo cp .lmac1.ko.cmd /mnt/home/root/
-  To unmount the SD Card
	$ sudo umount /dev/mmcblk0p2

	
	
***ZCU102 BOARD SETUP
- Insert SD card into the SD card slot J100.
- Set the SW6 switches as 1:ON, 2:OFF, 3:OFF and 4:OFF. This configures the boot settings to boot from SD card.
- Switch on the ZCU102 Board.
- In few seconds the Petalinux will boot up.
- Login: root, password: root.
