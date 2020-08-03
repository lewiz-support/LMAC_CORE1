

-------------- Aug 3, 2020

*** The design is for the FPGA Board part number xczu15eg-ffvb1156-2-e. ***
*** Change the part number to xczu9eg-ffvb1156-2-e. ***

HARDWARE DESIGN CHANGES:
- DMA running at 125Mhz same as LMAC frequency.
- Improve the AXIS2FIB design.

Integrated hardware with Lmac1 driver v1.0
TASKS PERFORMED:
- Able to boot the fpga and probe lmac driver.
- Able to assign the IP address to port eth0 through dhcp.
- Able to ping other linux system from FPGA board(using UART serial connection for this).
- Able to do telnet to other linux system.
- Able to do wget and download a text file.

Need more testing with driver V2.0




