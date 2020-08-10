//------------------------------------------------------------------------------
// Title      : Top-level Transceiver GT wrapper for Ethernet
// Project    : 1G/2.5G Ethernet PCS/PMA or SGMII LogiCORE
// File       : LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_transceiver.v
// Author     : Xilinx
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
//
//
//------------------------------------------------------------------------------
// Description:  This is the top-level Transceiver GT wrapper. It
//               instantiates the lower-level wrappers produced by
//               the Series-7 FPGA Transceiver GT Wrapper Wizard.
//------------------------------------------------------------------------------

`timescale 1 ps / 1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_transceiver #
(
    parameter EXAMPLE_SIMULATION                     =  0         // Set to 1 for simulation
)
(

   output           mmcm_reset,
   input            encommaalign,
   input            powerdown,
   input            usrclk,
   input            usrclk2,
   input            rxusrclk,
   input            rxusrclk2,
   input            data_valid,
   input            independent_clock,
   input            txreset,
   input      [7:0] txdata,
   input            txchardispmode,
   input            txchardispval,
   input            txcharisk,
   input            rxreset,
   output reg       rxchariscomma,
   output reg       rxcharisk,
   output reg [2:0] rxclkcorcnt,
   output reg [7:0] rxdata,
   output reg       rxdisperr,
   output reg       rxnotintable,
   output reg       rxrundisp,
   output reg       rxbuferr,
   output reg       txbuferr,
   output           plllkdet,
   output           txoutclk,
   output           rxoutclk,
   output           txn,
   output           txp,
   input            rxn,
   input            rxp,
   input            gtrefclk,
   output           gtpowergood,
   input            pmareset,
   input            mmcm_locked,
   output           resetdone,
   output           gt0_rxbyteisaligned_out,
   output           gt0_rxbyterealign_out,
   output           gt0_rxcommadet_out,
   input            gt0_txpolarity_in,
   input            gt0_txinhibit_in,
   input   [15:0]   gt0_pcsrsvdin_in,
   input   [4:0]    gt0_txdiffctrl_in,
   input   [4:0]    gt0_txpostcursor_in,
   input   [4:0]    gt0_txprecursor_in,
   input            gt0_rxpolarity_in,
   input            gt0_rxdfelpmreset_in,
   input            gt0_rxlpmen_in,
   input   [2:0]    gt0_txprbssel_in,
   input            gt0_txprbsforceerr_in,
   input            gt0_rxprbscntreset_in,
   output           gt0_rxprbserr_out,
   input   [2:0]    gt0_rxprbssel_in,
   input   [2:0]    gt0_loopback_in,
   output           gt0_txresetdone_out,
   output           gt0_rxresetdone_out,
   input            gt0_eyescanreset_in,
   output           gt0_eyescandataerror_out,
   input            gt0_eyescantrigger_in,
   input            gt0_rxcdrhold_in,
   input   [9:0]    gt0_drpaddr_in,
   input            gt0_drpclk_in,
   input   [15:0]   gt0_drpdi_in,
   output  [15:0]   gt0_drpdo_out,
   input            gt0_drpen_in,
   output           gt0_drprdy_out,
   input            gt0_drpwe_in,
   input            gt0_txpmareset_in      ,
   input            gt0_txpcsreset_in      ,
   input            gt0_rxpmareset_in      ,
   input            gt0_rxpcsreset_in      ,
   input            gt0_rxbufreset_in      ,
   output           gt0_rxpmaresetdone_out ,
   output [2:0]     gt0_rxbufstatus_out    ,
   output [1:0]     gt0_txbufstatus_out    ,
   input  [2:0]     gt0_rxrate_in          ,
   input  [2:0]     gt0_cpllrefclksel_in   ,
   input            gt0_gtrefclk1_in       ,
   output [15:0]    gt0_dmonitorout_out       

);

//----------------------------------------------------------------------------
// Signal declarations
//----------------------------------------------------------------------------

wire             cplllock;

wire      [2:0]  rxbufstatus;
wire      [1:0]  txbufstatus;
reg       [2:0]  rxbufstatus_reg;
reg       [1:0]  txbufstatus_reg;
wire      [1:0]  rxclkcorcnt_int;
reg              txpowerdown_reg = 1'b0;
reg              txpowerdown_double = 1'b0;
reg              txpowerdown = 1'b0;
wire      [1:0]  txpowerdown_int;

// signal used to control sampling during bus width conversions
reg              toggle = 1'b0;

// signals reclocked onto the 62.5MHz userclk source of the GT transceiver
wire             encommaalign_int;

// Register transmitter signals from the core
reg        [7:0] txdata_reg;
reg              txchardispmode_reg;
reg              txchardispval_reg;
reg              txcharisk_reg;

// Signals for data bus width doubling on the transmitter path from the core
// to the GT transceiver
reg       [15:0] txdata_double;
reg        [1:0] txchardispmode_double;
reg        [1:0] txchardispval_double;
reg        [1:0] txcharisk_double;

// Double width signals reclocked onto the 62.5MHz userclk source of the GT
// transceiver
reg       [15:0] txdata_int;
reg        [1:0] txchardispmode_int;
reg        [1:0] txchardispval_int;
reg        [1:0] txcharisk_int;

// Double width signals output from the GT transceiver on the 62.5MHz clock
// source
wire       [1:0] rxchariscomma_int;
wire       [1:0] rxcharisk_int;
wire      [15:0] rxdata_int;
wire       [1:0] rxdisperr_int;
wire       [1:0] rxnotintable_int;
wire       [1:0] rxrundisp_int;

// Double width signals reclocked on the GT's 62.5MHz clock source
reg        [1:0] rxchariscomma_reg;
reg        [1:0] rxcharisk_reg;
reg       [15:0] rxdata_reg;
reg        [1:0] rxclkcorcnt_reg;
reg        [1:0] rxdisperr_reg;
reg        [1:0] rxnotintable_reg;
reg        [1:0] rxrundisp_reg;
reg              rxpowerdown_reg = 1'b0;

// Double width signals reclocked onto the 125MHz clock source
reg        [1:0] rxchariscomma_double;
reg        [1:0] rxcharisk_double;
reg       [15:0] rxdata_double;
reg        [1:0] rxclkcorcnt_double;
reg        [1:0] rxdisperr_double;
reg        [1:0] rxnotintable_double;
reg        [1:0] rxrundisp_double;
reg              rxpowerdown_double = 1'b0;

reg              rxpowerdown = 1'b0;
wire       [1:0] rxpowerdown_int;

  wire [0 : 0] cplllock_out;
  wire [2 : 0] cpllrefclksel_in;
  wire [15 : 0] dmonitorout_out;
  wire [9 : 0] drpaddr_in;
  wire [0 : 0] drpclk_in;
  wire [15 : 0] drpdi_in;
  wire [15 : 0] drpdo_out;
  wire [0 : 0] drpen_in;
  wire [0 : 0] drprdy_out;
  wire [0 : 0] drpwe_in;
  wire [0 : 0] eyescandataerror_out;
  wire [0 : 0] eyescanreset_in;
  wire [0 : 0] eyescantrigger_in;
  wire [0 : 0] gthrxn_in;
  wire [0 : 0] gthrxp_in;
  wire [0 : 0] gthtxn_out;
  wire [0 : 0] gthtxp_out;
  wire [0 : 0] gtpowergood_out;
  wire [0 : 0] gtrefclk0_in;
  wire [0 : 0] gtrefclk1_in;
  wire [0 : 0] gtwiz_reset_all_in;
  wire [0 : 0] gtwiz_reset_clk_freerun_in;
  wire [0 : 0] gtwiz_reset_rx_cdr_stable_out;
  wire [0 : 0] gtwiz_reset_rx_datapath_in;
  wire [0 : 0] gtwiz_reset_rx_done_out;
  wire [0 : 0] gtwiz_reset_rx_pll_and_datapath_in;
  wire [0 : 0] gtwiz_reset_tx_datapath_in;
  wire [0 : 0] gtwiz_reset_tx_done_out;
  wire [0 : 0] gtwiz_reset_tx_pll_and_datapath_in;
  wire [0 : 0] gtwiz_userclk_rx_active_in;
  wire [0 : 0] gtwiz_userclk_tx_active_in;
  wire [0 : 0] gtwiz_userclk_tx_reset_in;
  wire [15 : 0] gtwiz_userdata_rx_out;
  wire [15 : 0] gtwiz_userdata_tx_in;
  wire [2 : 0] loopback_in;
  wire [15 : 0] pcsrsvdin_in;
  wire [0 : 0] rx8b10ben_in;
  wire [0 : 0] rxbufreset_in;
  wire [2 : 0] rxbufstatus_out;
  wire [0 : 0] rxbyteisaligned_out;
  wire [0 : 0] rxbyterealign_out;
  wire [0 : 0] rxcdrhold_in;
  wire [1 : 0] rxclkcorcnt_out;
  wire [0 : 0] rxcommadet_out;
  wire [0 : 0] rxcommadeten_in;
  wire [15 : 0] rxctrl0_out;
  wire [15 : 0] rxctrl1_out;
  wire [7 : 0] rxctrl2_out;
  wire [7 : 0] rxctrl3_out;
  wire [0 : 0] rxdfelpmreset_in;
  wire [0 : 0] rxlpmen_in;
  wire [0 : 0] rxmcommaalignen_in;
  wire [0 : 0] rxoutclk_out;
  wire [0 : 0] rxpcommaalignen_in;
  wire [0 : 0] rxpcsreset_in;
  wire [1 : 0] rxpd_in;
  wire [0 : 0] rxpmareset_in;
  wire [0 : 0] rxpmaresetdone_out;
  wire [0 : 0] rxpolarity_in;
  wire [0 : 0] rxprbscntreset_in;
  wire [0 : 0] rxprbserr_out;
  wire [3 : 0] rxprbssel_in;
  wire [2 : 0] rxrate_in;
  wire [0 : 0] rxresetdone_out;
  wire [0 : 0] rxusrclk2_in;
  wire [0 : 0] rxusrclk_in;
  wire [0 : 0] tx8b10ben_in;
  wire [1 : 0] txbufstatus_out;
  wire [15 : 0] txctrl0_in;
  wire [15 : 0] txctrl1_in;
  wire [7 : 0] txctrl2_in;
  wire [4 : 0] txdiffctrl_in;
  wire [0 : 0] txelecidle_in;
  wire [0 : 0] txinhibit_in;
  wire [0 : 0] txoutclk_out;
  wire [0 : 0] txpcsreset_in;
  wire [1 : 0] txpd_in;
  wire [0 : 0] txpmareset_in;
  wire [0 : 0] txpmaresetdone_out;
  wire [0 : 0] txpolarity_in;
  wire [4 : 0] txpostcursor_in;
  wire [0 : 0] txprbsforceerr_in;
  wire [3 : 0] txprbssel_in;
  wire [4 : 0] txprecursor_in;
  wire [0 : 0] txprgdivresetdone_out;
  wire [0 : 0] txresetdone_out;
  wire [0 : 0] txusrclk2_in;
  wire [0 : 0] txusrclk_in;


   assign txpowerdown_int = {2{txpowerdown}};
   assign rxpowerdown_int = {2{rxpowerdown}};

   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be reclocked onto the 62.5MHz
   // clock
   //---------------------------------------------------------------------------

   // Reclock encommaalign
   LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_reset_sync reclock_encommaalign
   (
      .clk       (usrclk),
      .reset_in  (encommaalign),
      .reset_out (encommaalign_int)
   );

   //---------------------------------------------------------------------------
   // toggle signal used to control sampling during bus width conversions
   //---------------------------------------------------------------------------

   always @(posedge usrclk2)
   begin
       toggle <= !toggle;
   end
   
   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be converted to double width, then
   // resampled on the GT's 62.5MHz clock
   //---------------------------------------------------------------------------

   // Reclock the transmitter signals
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_reg         <= 8'b0;
       txchardispmode_reg <= 1'b0;
       txchardispval_reg  <= 1'b0;
       txcharisk_reg      <= 1'b0;
       txpowerdown_reg    <= 1'b0;
     end
     else begin
       txdata_reg         <= txdata;
       txchardispmode_reg <= txchardispmode;
       txchardispval_reg  <= txchardispval;
       txcharisk_reg      <= txcharisk;
       txpowerdown_reg    <= powerdown;
     end
   end

   // Double the data width
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_double                <= 16'b0;
       txchardispmode_double        <= 2'b0;
       txchardispval_double         <= 2'b0;
       txcharisk_double             <= 2'b0;
       txpowerdown_double           <= 1'b0;
     end
     else begin
       if (!toggle) begin
         txdata_double[7:0]         <= txdata_reg;
         txchardispmode_double[0]   <= txchardispmode_reg;
         txchardispval_double[0]    <= txchardispval_reg;
         txcharisk_double[0]        <= txcharisk_reg;
         txdata_double[15:8]        <= txdata;
         txchardispmode_double[1]   <= txchardispmode;
         txchardispval_double[1]    <= txchardispval;
         txcharisk_double[1]        <= txcharisk;
       end
       txpowerdown_double         <= txpowerdown_reg;
     end
   end

   // Cross the clock domain
   always @(posedge usrclk)
   begin
     txdata_int         <= txdata_double;
     txchardispmode_int <= txchardispmode_double;
     txchardispval_int  <= txchardispval_double;
     txcharisk_int      <= txcharisk_double;
     txbufstatus_reg    <= txbufstatus;
     txpowerdown        <= txpowerdown_double;
   end

   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the GT transceiver therefore need to converted to half width
   //---------------------------------------------------------------------------

  // Sample the double width received data from the GT transsciever on the GT's
  // 62.5MHz clock
  always @(posedge usrclk)
  begin
    rxchariscomma_reg  <= rxchariscomma_int;
    rxcharisk_reg      <= rxcharisk_int;
    rxdata_reg         <= rxdata_int;
    rxclkcorcnt_reg    <= rxclkcorcnt_int;
    rxdisperr_reg      <= rxdisperr_int;
    rxnotintable_reg   <= rxnotintable_int;
    rxrundisp_reg      <= rxrundisp_int;
    rxbufstatus_reg    <= rxbufstatus;
    rxpowerdown        <= rxpowerdown_reg;
  end


  // Reclock the double width received data from the GT transsciever onto the
  // 125MHz clock source.   Both clock domains are frequency related and are
  // derived from the same MMCM: the Xilinx tools will accont for this.

  always @(posedge usrclk2)
  begin
    if (rxreset) begin
      rxchariscomma_double  <= 2'b0;
      rxcharisk_double      <= 2'b0;
      rxdata_double         <= 16'b0;
      rxclkcorcnt_double    <= 2'b0;
      rxdisperr_double      <= 2'b0;
      rxnotintable_double   <= 2'b0;
      rxrundisp_double      <= 2'b0;
      rxpowerdown_double    <= 1'b0;
    end
    else if (toggle) begin
      rxchariscomma_double  <= rxchariscomma_reg;
      rxcharisk_double      <= rxcharisk_reg;
      rxdata_double         <= rxdata_reg;
      rxclkcorcnt_double    <= rxclkcorcnt_reg;
      rxdisperr_double      <= rxdisperr_reg;
      rxnotintable_double   <= rxnotintable_reg;
      rxrundisp_double      <= rxrundisp_reg;
    end
    rxpowerdown_double      <= powerdown;
  end


  // Halve the bus width
  always @(posedge usrclk2)
  begin
    if (rxreset) begin
      rxchariscomma    <= 1'b0;
      rxcharisk        <= 1'b0;
      rxdata           <= 8'b0;
      rxclkcorcnt      <= 3'b0;
      rxdisperr        <= 1'b0;
      rxnotintable     <= 1'b0;
      rxrundisp        <= 1'b0;
      rxpowerdown_reg  <= 1'b0;
    end
    else begin
      if (!toggle) begin
        rxchariscomma  <= rxchariscomma_double[0];
        rxcharisk      <= rxcharisk_double[0];
        rxdata         <= rxdata_double[7:0];
        rxclkcorcnt    <= {1'b0, rxclkcorcnt_double};
        rxdisperr      <= rxdisperr_double[0];
        rxnotintable   <= rxnotintable_double[0];
        rxrundisp      <= rxrundisp_double[0];
      end
      else begin
        rxchariscomma  <= rxchariscomma_double[1];
        rxcharisk      <= rxcharisk_double[1];
        rxdata         <= rxdata_double[15:8];
        rxclkcorcnt    <= {1'b0, rxclkcorcnt_double};
        rxdisperr      <= rxdisperr_double[1];
        rxnotintable   <= rxnotintable_double[1];
        rxrundisp      <= rxrundisp_double[1];
      end
      rxpowerdown_reg  <= rxpowerdown_double;
    end
  end

  assign  mmcm_reset                           = !cplllock_out;
  assign  gtwiz_userclk_tx_active_in           = mmcm_locked;
  assign  gtwiz_userclk_tx_reset_in            = 1'b0;
  assign  gtwiz_userclk_rx_active_in           = rxpmaresetdone_out;
  assign  gtwiz_reset_clk_freerun_in           = independent_clock;
  assign  gtwiz_reset_all_in                   = pmareset;
  assign  gtwiz_reset_tx_pll_and_datapath_in   = 1'b0; 
  assign  gtwiz_reset_tx_datapath_in           = txreset & gtwiz_reset_tx_done_out;
  assign  gtwiz_reset_rx_pll_and_datapath_in   = 1'b0;
  assign  gtwiz_reset_rx_datapath_in           = rxreset & gtwiz_reset_rx_done_out;
  assign  gthrxn_in[0]                         = rxn;
  assign  gthrxp_in[0]                         = rxp;
  assign  gtrefclk0_in[0]                      = gtrefclk;
  assign  gtpowergood                          = gtpowergood_out;
  assign  loopback_in                          = gt0_loopback_in;
  assign  rx8b10ben_in                         = 1'b1;
  assign  rxcommadeten_in                      = 1'b1;
  assign  rxmcommaalignen_in                   = encommaalign_int;
  assign  rxpcommaalignen_in                   = encommaalign_int;
  assign  rxpd_in                              = rxpowerdown_int;
  assign  rxusrclk_in                          = usrclk;
  assign  rxusrclk2_in                         = usrclk;
  assign  tx8b10ben_in                         = 1'b1;
  assign  txdiffctrl_in                        = gt0_txdiffctrl_in;
  assign  txinhibit_in                         = gt0_txinhibit_in;
  assign  pcsrsvdin_in                         = gt0_pcsrsvdin_in;
  assign  txctrl0_in[1:0]                      = txchardispval_int;
  assign  txctrl1_in[1:0]                      = txchardispmode_int;
  assign  txctrl2_in[1:0]                      = txcharisk_int;
  assign  txctrl0_in[15:2]                     = 14'b0;
  assign  txctrl1_in[15:2]                     = 14'b0;
  assign  txctrl2_in[7:2]                      = 6'b0;
  assign  gtwiz_userdata_tx_in                 = txdata_int;
  assign  txelecidle_in                        = txpowerdown_int[0];
  assign  txpd_in                              = txpowerdown_int;
  assign  txusrclk_in                          = usrclk;
  assign  txusrclk2_in                         = usrclk;
  assign  cplllock                             = cplllock_out;
  assign  txn                                  = gthtxn_out[0];
  assign  txp                                  = gthtxp_out[0];
  assign  rxbufstatus                          = rxbufstatus_out;
  assign  txbufstatus                          = txbufstatus_out;
  assign rxclkcorcnt_int                       = rxclkcorcnt_out;
  assign rxcharisk_int                         = rxctrl0_out[1:0];
  assign rxdisperr_int                         = rxctrl1_out[1:0];
  assign rxchariscomma_int                     = rxctrl2_out[1:0];
  assign rxnotintable_int                      = rxctrl3_out[1:0];
  assign  rxdata_int                           = gtwiz_userdata_rx_out;
  assign rxoutclk                              = rxoutclk_out;
  assign txoutclk                              = txoutclk_out;
  // Report overall status for both transmitter and receiver reset done signals
  assign resetdone                             = gtwiz_reset_tx_done_out & gtwiz_reset_rx_done_out;
  assign  gt0_rxbyteisaligned_out              = rxbyteisaligned_out;
  assign  gt0_rxbyterealign_out                = rxbyterealign_out;
  assign  gt0_rxcommadet_out                   = rxcommadet_out;
  assign txpolarity_in                         = gt0_txpolarity_in;    
  assign txpostcursor_in                       = gt0_txpostcursor_in;    
  assign txprecursor_in                        = gt0_txprecursor_in;    
  assign rxpolarity_in                         = gt0_rxpolarity_in;    
  assign rxdfelpmreset_in                      = gt0_rxdfelpmreset_in;    
  assign rxlpmen_in                            = gt0_rxlpmen_in;    
  assign txprbssel_in[2:0]                     = gt0_txprbssel_in;    
  assign txprbsforceerr_in                     = gt0_txprbsforceerr_in;    
  assign rxprbscntreset_in                     = gt0_rxprbscntreset_in;    
  assign gt0_rxprbserr_out                     = rxprbserr_out;    
  assign rxprbssel_in[2:0]                     = gt0_rxprbssel_in; 
  assign rxprbssel_in[3]                       = 1'b0;
  assign txprbssel_in[3]                       = 1'b0;
  assign gt0_txresetdone_out                   = txresetdone_out;    
  assign gt0_rxresetdone_out                   = rxresetdone_out;    
  assign eyescanreset_in                       = gt0_eyescanreset_in;    
  assign gt0_eyescandataerror_out              = eyescandataerror_out;   
  assign eyescantrigger_in                     = gt0_eyescantrigger_in;    
  assign rxcdrhold_in                          = gt0_rxcdrhold_in;    

  assign drpaddr_in                            = gt0_drpaddr_in;
  assign drpclk_in                             = gt0_drpclk_in;
  assign drpdi_in                              = gt0_drpdi_in;
  assign gt0_drpdo_out                         = drpdo_out;
  assign drpen_in                              = gt0_drpen_in;
  assign gt0_drprdy_out                        = drprdy_out;
  assign drpwe_in                              = gt0_drpwe_in;    

  assign txpmareset_in      = gt0_txpmareset_in;   
  assign txpcsreset_in      = gt0_txpcsreset_in;   
  assign rxpmareset_in      = gt0_rxpmareset_in;   
  assign rxpcsreset_in      = gt0_rxpcsreset_in;   
  assign rxbufreset_in      = gt0_rxbufreset_in;   
  assign gt0_rxpmaresetdone_out = rxpmaresetdone_out;   
  assign gt0_rxbufstatus_out    = rxbufstatus_out;   
  assign gt0_txbufstatus_out    = txbufstatus_out;   
  assign rxrate_in              = gt0_rxrate_in;   
  assign cpllrefclksel_in       = gt0_cpllrefclksel_in;
  assign gtrefclk1_in           = gt0_gtrefclk1_in;
  assign gt0_dmonitorout_out    = dmonitorout_out;   

    LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_gt LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_gt_i
  (
   .cplllock_out(cplllock_out),
   .cpllrefclksel_in(cpllrefclksel_in),
   .dmonitorout_out(dmonitorout_out),
   .drpaddr_in(drpaddr_in),
   .drpclk_in(drpclk_in),
   .drpdi_in(drpdi_in),
   .drpdo_out(drpdo_out),
   .drpen_in(drpen_in),
   .drprdy_out(drprdy_out),
   .drpwe_in(drpwe_in),
   .eyescandataerror_out(eyescandataerror_out),
   .eyescanreset_in(eyescanreset_in),
   .eyescantrigger_in(eyescantrigger_in),
   .gthrxn_in(gthrxn_in),
   .gthrxp_in(gthrxp_in),
   .gthtxn_out(gthtxn_out),
   .gthtxp_out(gthtxp_out),
   .gtpowergood_out(gtpowergood_out),
   .gtrefclk0_in(gtrefclk0_in),
   .gtrefclk1_in(gtrefclk1_in),
   .gtwiz_reset_all_in(gtwiz_reset_all_in),
   .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
   .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
   .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
   .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
   .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
   .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
   .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
   .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
   .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
   .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
   .gtwiz_userclk_tx_reset_in(gtwiz_userclk_tx_reset_in),
   .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
   .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
   .loopback_in(loopback_in),
   .pcsrsvdin_in(pcsrsvdin_in),
   .rx8b10ben_in(rx8b10ben_in),
   .rxbufreset_in(rxbufreset_in),
   .rxbufstatus_out(rxbufstatus_out),
   .rxbyteisaligned_out(rxbyteisaligned_out),
   .rxbyterealign_out(rxbyterealign_out),
   .rxcdrhold_in(rxcdrhold_in),
   .rxclkcorcnt_out(rxclkcorcnt_out),
   .rxcommadet_out(rxcommadet_out),
   .rxcommadeten_in(rxcommadeten_in),
   .rxctrl0_out(rxctrl0_out),
   .rxctrl1_out(rxctrl1_out),
   .rxctrl2_out(rxctrl2_out),
   .rxctrl3_out(rxctrl3_out),
   .rxdfelpmreset_in(rxdfelpmreset_in),
   .rxlpmen_in(rxlpmen_in),
   .rxmcommaalignen_in(rxmcommaalignen_in),
   .rxoutclk_out(rxoutclk_out),
   .rxpcommaalignen_in(rxpcommaalignen_in),
   .rxpcsreset_in(rxpcsreset_in),
   .rxpd_in(rxpd_in),
   .rxpmareset_in(rxpmareset_in),
   .rxpmaresetdone_out(rxpmaresetdone_out),
   .rxpolarity_in(rxpolarity_in),
   .rxprbscntreset_in(rxprbscntreset_in),
   .rxprbserr_out(rxprbserr_out),
   .rxprbssel_in(rxprbssel_in),
   .rxrate_in(rxrate_in),
   .rxresetdone_out(rxresetdone_out),
   .rxusrclk2_in(rxusrclk2_in),
   .rxusrclk_in(rxusrclk_in),
   .tx8b10ben_in(tx8b10ben_in),
   .txbufstatus_out(txbufstatus_out),
   .txctrl0_in(txctrl0_in),
   .txctrl1_in(txctrl1_in),
   .txctrl2_in(txctrl2_in),
   .txdiffctrl_in(txdiffctrl_in),
   .txelecidle_in(txelecidle_in),
   .txinhibit_in(txinhibit_in),
   .txoutclk_out(txoutclk_out),
   .txpcsreset_in(txpcsreset_in),
   .txpd_in(txpd_in),
   .txpmareset_in(txpmareset_in),
   .txpmaresetdone_out(txpmaresetdone_out),
   .txpolarity_in(txpolarity_in),
   .txpostcursor_in(txpostcursor_in),
   .txprbsforceerr_in(txprbsforceerr_in),
   .txprbssel_in(txprbssel_in),
   .txprecursor_in(txprecursor_in),
   .txprgdivresetdone_out(txprgdivresetdone_out),
   .txresetdone_out(txresetdone_out),
   .txusrclk2_in(txusrclk2_in),
   .txusrclk_in(txusrclk_in)
  );


  // Output the PLL locked status
  assign plllkdet = cplllock;

  assign rxrundisp_int = 2'b0;

  // Decode the GT transceiver buffer status signals
always @(posedge usrclk2)
  begin
  rxbuferr    <= rxbufstatus_reg[2];
  txbuferr    <= txbufstatus_reg[1];
end

endmodule
