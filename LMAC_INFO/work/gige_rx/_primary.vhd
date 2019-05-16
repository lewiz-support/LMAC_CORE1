library verilog;
use verilog.vl_types.all;
entity gige_rx is
    port(
        clk             : in     vl_logic;
        \reset_\        : in     vl_logic;
        fmac_speed      : in     vl_logic_vector(1 downto 0);
        data_in_s2p     : in     vl_logic_vector(7 downto 0);
        ctrl_in_s2p     : in     vl_logic;
        pdet_in_s2p     : in     vl_logic;
        gmii_rx_dv      : in     vl_logic;
        loopback_en     : in     vl_logic;
        sfp_los         : in     vl_logic;
        gige_rx_dout    : out    vl_logic_vector(63 downto 0);
        gige_rx_cout    : out    vl_logic_vector(7 downto 0);
        linkup          : out    vl_logic;
        dbg             : out    vl_logic
    );
end gige_rx;
