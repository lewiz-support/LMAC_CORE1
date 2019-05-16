library verilog;
use verilog.vl_types.all;
entity phy_emulator_8b is
    port(
        xaui_clk        : in     vl_logic;
        \reset_\        : in     vl_logic;
        fmac_speed      : in     vl_logic_vector(1 downto 0);
        rx_pkt_gen_sel  : in     vl_logic;
        gmii_txd        : in     vl_logic_vector(7 downto 0);
        gmii_txc        : in     vl_logic;
        gmii_tx_en      : in     vl_logic;
        gmii_tx_vld     : in     vl_logic;
        gmii_rxd        : out    vl_logic_vector(7 downto 0);
        gmii_rxc        : out    vl_logic;
        gmii_rx_dv      : out    vl_logic;
        bit8_en         : in     vl_logic;
        test            : out    vl_logic
    );
end phy_emulator_8b;
