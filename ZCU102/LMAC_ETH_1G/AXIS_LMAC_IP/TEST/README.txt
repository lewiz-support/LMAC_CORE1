
***This test case tested the transmsion of 8 packet*** 
For the maximum performance,the minimum activited time of wrempty  singal should be push to 12ns (not including the first pkt)

To run this test:

1.Copy the path for memory data and ctrl
$readmemh("C:/LMAC_INFO/TESTS/Tx_TESTS/PERFORMANCE_TEST_CASES/1G_TEST_CASES/1G_PERFORMANCE_TEST_1/1G_performance_test1_ctrl.txt",memory_wr_ctrl);
$readmemh("C:/LMAC_INFO/TESTS/Tx_TESTS/PERFORMANCE_TEST_CASES/1G_TEST_CASES/1G_PERFORMANCE_TEST_1/1G_performance_test1_data.txt",memory_wr_data);

2.Run the following script
source C:/LMAC_INFO/TESTS/Tx_TESTS/PERFORMANCE_TEST_CASES/1G_TEST_CASES/1G_PERFORMANCE_TEST_1/Script_1G_performance.txt


Expected results:
---------------------------------------------------------------
The length of pkt_1 = 1077 bytes 
The number of valid bytes in the last quardword = 5 
The number of bytes in gap = 14 
---------------------------------------------------------------
The length of pkt_2 = 48 bytes 
The number of valid bytes in the last quardword = 8 
The number of bytes in gap = 11
---------------------------------------------------------------
The length of pkt_3 = 60 bytes 
The number of valid bytes in the last quardword = 4 
The number of bytes in gap = 15
---------------------------------------------------------------
The length of pkt_4 = 57 bytes 
The number of valid bytes in the last quardword = 1 
The number of bytes in gap = 18
---------------------------------------------------------------
The length of pkt_5 = 128 bytes 
The number of valid bytes in the last quardword = 8 
The number of bytes in gap = 11
---------------------------------------------------------------
The length of pkt_6 = 67 bytes 
The number of valid bytes in the last quardword = 3 
The number of bytes in gap = 16
---------------------------------------------------------------
The length of pkt_7 = 50 bytes 
The number of valid bytes in the last quardword = 2 
The number of bytes in gap = 17
---------------------------------------------------------------
The length of pkt_8 = 363 bytes 
The number of valid bytes in the last quardword = 3 
The number of bytes in gap = 16
