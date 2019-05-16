# LMAC_CORE1

Copyright (C) 2018-2019 LeWiz Communications, Inc.

LeWiz Communications, Inc. Ethernet MAC Core1 - Ethernet 1G/100M/10M

-------- May 16, 2019

Released code files as separate files. No longer 1 zip file.
Updated code, test files to latest release.


-------- Nov 21, 2018

This is the open source Ethernet Core 1 
Release as GNU LGPL open source - make sure you read the full license file (included as PDF)
All information are released as-is. LeWiz assumes absolutely no liability 

The release consists of 4 ZIP files: CODE, 2 LMAC_INFO_part* for TESTS, and DOCS
There are README files under each zip file.  If you follow the instructions, you should be able to use the core
and test it as we have done.

The release includes the core, test bench, test files, documentation for understanding the information in the zip files
including code, test, core descriptions

The main core itself has been production deployed and used on Intel and Xilinx FPGAs for several years.
The interface for AXI is recently added to make it easy for the user to interface.

This release is not intended for synthesis as it does not contain any FPGA or other semiconductor technology specific 
(memory/FIFO IP, etc.) To synthesize, those parts need to be replaced with specific semiconductor technology equivalent.

Simulation is intended for ModelSim tool.
