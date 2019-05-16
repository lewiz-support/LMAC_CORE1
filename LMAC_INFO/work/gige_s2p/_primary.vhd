library verilog;
use verilog.vl_types.all;
entity gige_s2p is
    port(
        clk             : in     vl_logic;
        \reset_\        : in     vl_logic;
        fmac_speed      : in     vl_logic_vector(1 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        ctrl_in         : in     vl_logic;
        pdet_in         : in     vl_logic;
        gmii_rx_dv      : in     vl_logic;
        data_out        : out    vl_logic_vector(63 downto 0);
        ctrl_out        : out    vl_logic_vector(7 downto 0);
        loopback_en     : in     vl_logic;
        sfp_los         : in     vl_logic;
        linkup          : out    vl_logic;
        x_we            : out    vl_logic;
        x_bcnt_we       : out    vl_logic;
        x_byte_cnt      : out    vl_logic_vector(15 downto 0)
    );
end gige_s2p;
