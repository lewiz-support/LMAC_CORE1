library verilog;
use verilog.vl_types.all;
entity rx_pkt_gen3_8b is
    generic(
        MAX_RD_CNT      : integer := 180;
        DAT_I           : integer := 1;
        DAT_0           : integer := 2;
        DAT_1           : integer := 4;
        DAT_2           : integer := 8;
        DAT_3           : integer := 16;
        DAT_4           : integer := 32;
        DAT_5           : integer := 64;
        DAT_6           : integer := 128;
        DAT_7           : integer := 256
    );
    port(
        xaui_clk        : in     vl_logic;
        \reset_\        : in     vl_logic;
        fmac_speed      : in     vl_logic_vector(1 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        ctrl_out        : out    vl_logic;
        rxd             : out    vl_logic_vector(63 downto 0);
        rxc             : out    vl_logic_vector(7 downto 0);
        tb_rx_pkt_gen_en: in     vl_logic;
        tb_rx_pkt_gen_addr_offset: in     vl_logic_vector(63 downto 0);
        tb_rx_pkt_gen_read_cnt: in     vl_logic_vector(10 downto 0);
        test            : out    vl_logic
    );
end rx_pkt_gen3_8b;
