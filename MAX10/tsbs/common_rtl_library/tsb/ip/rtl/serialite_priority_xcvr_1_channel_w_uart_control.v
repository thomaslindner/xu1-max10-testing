`ifndef SERIALITE_PRIORITY_XCVR_1_CHANNEL_W_UART_CONTROL_V
`define SERIALITE_PRIORITY_XCVR_1_CHANNEL_W_UART_CONTROL_V
`default_nettype none
`include "interface_defs.v"

module serialite_priority_xcvr_1_channel_w_uart_control
#(
parameter ctl_rxhpp_ftl_DEFAULT = 20,
parameter ctl_rxhpp_eopdav_DEFAULT = 1,
parameter ctl_txhpp_fth_DEFAULT = 20,
parameter REGFILE_BAUD_RATE = 2000000,
parameter [63:0] xcvr_name = "undef",
parameter synchronizer_depth = 3
)
(
	input XCVR_RX,
	output XCVR_TX,
	input CLKIN_125MHz,
	input CLKIN_50MHz,
	output uart_tx,
	input uart_rx,
	avalon_st_32_bit_packet_interface  avalon_st_packet_tx_out,
	avalon_st_32_bit_packet_interface  avalon_st_packet_rx_in,	
	output [7:0] current_rx_packet_id,
	output rx_clk,
    input wire IS_SECONDARY_UART,
    input wire [7:0] NUM_SECONDARY_UARTS,
    input wire [7:0] ADDRESS_OF_THIS_UART
	
);
	
import uart_regfile_types::*;

reg [7:0] current_tx_packet_id_counter = 0;

wire [31:0] reconfig_gx_error;
wire xcvr_reconfig_busy;
wire xcvr_loopback_enable;
wire actual_xcvr_loopback_enable;
	wire reset_serialite_n;
	/* input	*/ logic     	rxin;
	/* input	*/ logic     	ctrl_tc_force_train;
	/* input	*/ logic     	trefclk;
	/* input	*/ logic     	cal_blk_clk;
	/* input	*/ logic     	gxb_powerdown;
	(* keep = 1 *)/* input	*/ logic     	mreset_n;
	(* keep = 1 *)/* input	*/ logic     	rxhpp_clk;
	(* keep = 1 *)/* input	*/ logic     	rxhpp_ena;
	(* keep = 1 *)/* input	*/ logic     [7:0]	ctl_rxhpp_ftl;
	(* keep = 1 *)/* input	*/ logic     	    ctl_rxhpp_eopdav;
	(* keep = 1 *)/* input	*/ logic     	    txhpp_clk;
	(* keep = 1 *)/* input	*/ logic     	    txhpp_ena;
	(* keep = 1 *)/* input	*/ logic     	    txhpp_sop;
	(* keep = 1 *)/* input	*/ logic     	    txhpp_eop;
	(* keep = 1 *)/* input	*/ logic     	    txhpp_err;
	(* keep = 1 *)/* input	*/ logic     [1:0]	txhpp_mty;
	(* keep = 1 *)/* input	*/ logic     [31:0]	txhpp_dat;
	(* keep = 1 *)/* input	*/ logic     [7:0]	txhpp_adr;
	(* keep = 1 *)/* input	*/ logic     [7:0]	ctl_txhpp_fth;
	(* keep = 1 *)/* input	*/ logic     	ctrl_tc_serial_lpbena;
	/* input	*/ logic     	reconfig_clk;
	/* input	*/ logic     [3:0]	reconfig_togxb;
	/* output	*/ logic     [16:0]	reconfig_fromgxb;

	/* output	*/ logic     	rrefclk;
	/* output	*/ logic     	txout;
	
	/* output	*/ logic     	tx_coreclock;
	/* output	*/ logic     	rcvd_clk_out;
	(* keep = 1 *) /* output	*/ logic     	rxhpp_sop;
	(* keep = 1 *) /* output	*/ logic     	rxhpp_eop;
	(* keep = 1 *) /* output	*/ logic     	rxhpp_err;
	(* keep = 1 *) /* output	*/ logic     [1:0]	rxhpp_mty;
	(* keep = 1 *) /* output	*/ logic     [31:0]	rxhpp_dat;
	(* keep = 1 *) /* output	*/ logic     [7:0]	rxhpp_adr;
    (* keep = 1 *) /* output	*/ logic     	txhpp_dav;	
	(* keep = 1 *) /* output	*/ logic    rxhpp_val;	
    (* keep = 1 *) /* output	*/ logic    rxhpp_dav;
	
(* keep = 1 *)	/* output	*/ logic            stat_rr_link;
(* keep = 1 *)	/* output	*/ logic     [3:0]	stat_rr_gxsync;
	(* keep = 1 *) /* output	*/ logic     	    stat_rr_freqlock;
	(* keep = 1 *) /* output	*/ logic            stat_rr_rxlocked;
	(* keep = 1 *)/* output	*/ logic     [3:0]	stat_rr_pattdet;
	(* keep = 1 *)/* output	*/ logic     	    stat_tc_pll_locked;
	(* keep = 1 *) /* output	*/ logic     	    stat_tc_rst_done;
	(* keep = 1 *) /* output	*/ logic     	    stat_tc_foffre_empty;
	(* keep = 1 *) /* output	*/ logic     	    stat_rr_ebprx;
	(* keep = 1 *) /* output	*/ logic     	    stat_rxhpp_empty;
	
	(* keep = 1 *) /* output	*/ logic  [3:0]	err_rr_8berrdet;
	(* keep = 1 *) /* output	*/ logic  [3:0]	err_rr_disp;
	(* keep = 1 *) /* output	*/ logic     	err_rr_pcfifo_uflw;
	(* keep = 1 *) /* output	*/ logic     	err_rr_pcfifo_oflw;
	(* keep = 1 *) /* output	*/ logic     	err_rr_rlv;
	(* keep = 1 *) /* output	*/ logic     	err_tc_rxhpp_oflw;
	(* keep = 1 *) /* output	*/ logic     	err_tc_pcfifo_oflw;
	(* keep = 1 *) /* output	*/ logic     	err_tc_pcfifo_uflw;
	(* keep = 1 *) /* output	*/ logic     	err_txhpp_oflw;
	(* keep = 1 *) /* output	*/ logic     	err_rr_foffre_oflw;
	(* keep = 1 *) /* output	*/ logic     	err_rr_bip8;
	(* keep = 1 *) /* output	*/ logic     	err_rr_crc;
	(* keep = 1 *) /* output	*/ logic     	err_rr_fcrx_bne;
	(* keep = 1 *) /* output	*/ logic     	err_rr_roerx_bne;
	(* keep = 1 *) /* output	*/ logic     	err_rr_invalid_lmprx;
	(* keep = 1 *) /* output	*/ logic     	err_rr_missing_start_dcw;
	(* keep = 1 *) /* output	*/ logic     	err_rr_addr_mismatch;
	(* keep = 1 *) /* output	*/ logic     	err_rr_pol_rev_required;
    (* keep = 1 *) /* output	*/ logic        err_tc_roe_rsnd_gt4;
	(* keep = 1 *) /* output	*/ logic        stat_tc_roe_timeout;
	(* keep = 1 *) /* output	*/ logic        stat_rr_roe_ack;
	(* keep = 1 *) /* output	*/ logic        stat_rr_roe_nack;
	(* keep = 1 *) /* output	*/ logic        err_tc_is_drop;
	(* keep = 1 *) /* output	*/ logic        err_tc_lm_fifo_oflw;
	(* keep = 1 *) /* output	*/ logic        err_rr_rx2txfifo_oflw;
	(* keep = 1 *) /* output	*/ logic		stat_rr_fc_rdp_valid;
	(* keep = 1 *) /* output	*/ logic		stat_rr_fc_hpp_valid;
	(* keep = 1 *) /* output	*/ logic[7:0]	stat_rr_fc_value;
	(* keep = 1 *) /* output	*/ logic		stat_tc_fc_rdp_retransmit;
	(* keep = 1 *) /* output	*/ logic		stat_tc_fc_hpp_retransmit;
	(* keep = 1 *) /* output	*/ logic		stat_tc_rdp_thresh_breach;
	(* keep = 1 *) /* output	*/ logic		stat_tc_hpp_thresh_breach;
	(* keep = 1 *) wire [7:0] controlled_tx_adr;

	
	
	
	wire override_ready;
	wire actual_override_ready;
	wire override_tx_ready;
	wire actual_override_tx_ready;
	
assign reconfig_clk = CLKIN_50MHz;

(* keep = 1 *)  wire [31:0] slite_error = {
    1'b0,err_tc_is_drop,err_tc_lm_fifo_oflw,err_rr_rx2txfifo_oflw,
    err_rr_8berrdet[3:0],
    err_rr_disp[3:0],
 	err_rr_pcfifo_uflw,  	err_rr_pcfifo_oflw, 	err_rr_rlv, 	err_tc_rxhpp_oflw, 	
	err_tc_pcfifo_oflw, 	err_tc_pcfifo_uflw, 	err_txhpp_oflw, 		err_rr_foffre_oflw,
 	err_rr_bip8, 	         err_rr_crc, 	err_rr_fcrx_bne, 	err_rr_roerx_bne,
 	err_rr_invalid_lmprx, 	err_rr_missing_start_dcw, 	err_rr_addr_mismatch, 	err_rr_pol_rev_required
};

(* keep = 1 *)  wire [31:0] slite_status = {
  rxhpp_dav, txhpp_dav, 
  stat_rr_gxsync [3:0],
  stat_rr_pattdet [3:0],
  stat_rr_freqlock,  stat_rr_rxlocked,    stat_tc_pll_locked, stat_rr_link,
  stat_tc_rst_done,  stat_tc_foffre_empty,  stat_rr_ebprx,  stat_rxhpp_empty
 };


doublesync_no_reset #(.synchronizer_depth(synchronizer_depth))
sync_xcvr_loopback_enable
(
.indata(xcvr_loopback_enable),
.outdata(actual_xcvr_loopback_enable),
.clk(tx_coreclock)
);

doublesync_no_reset #(.synchronizer_depth(synchronizer_depth))
sync_override_ready
(
.indata(override_ready),
.outdata(actual_override_ready),
.clk(rxhpp_clk)
);
		
doublesync_no_reset #(.synchronizer_depth(synchronizer_depth))
sync_override_tx_ready
(
.indata(override_tx_ready),
.outdata(actual_override_tx_ready),
.clk(txhpp_clk)
);

(* keep = 1 *) wire [7:0] atlantic_to_st_converter_fifo_usedw;
(* keep = 1 *) wire       atlantic_to_st_converter_fifo_almost_empty ;
(* keep = 1 *) wire       atlantic_to_st_converter_fifo_almost_full  ;
(* keep = 1 *) wire       atlantic_to_st_converter_fifo_empty        ;
(* keep = 1 *) wire       atlantic_to_st_converter_fifo_full       ;
(* keep = 1 *) wire       atlantic_to_st_converter_fifo_flush;  
		

	
	atlantic_32_bit_packet_interface txout_atlantic_interface();
	atlantic_32_bit_packet_interface rxin_atlantic_interface();
	
	convert_from_priority_atlantic_interface_to_avalon_st_sink
	convert_from_priority_atlantic_interface_to_avalon_st_sink_inst
	(
	.atlantic_packet(rxin_atlantic_interface),
	.avalon_st_packet_to_sink(avalon_st_packet_rx_in                     ),
	.override_avalon_st_ready(actual_override_ready                      ),
    .fifo_usedw              (atlantic_to_st_converter_fifo_usedw        ),
    .fifo_almost_empty       (atlantic_to_st_converter_fifo_almost_empty ),	
    .fifo_almost_full        (atlantic_to_st_converter_fifo_almost_full  ),	
    .fifo_empty              (atlantic_to_st_converter_fifo_empty        ),	
    .fifo_full               (atlantic_to_st_converter_fifo_full         ),	
    .fifo_flush   	         (atlantic_to_st_converter_fifo_flush        ),  	
	.reset_n                 (mreset_n)
	);
	
	convert_from_avalon_st_source_to_atlantic
	convert_from_avalon_st_source_to_atlantic_inst
	(
	.avalon_st_packet_from_source(avalon_st_packet_tx_out),
	.atlantic_packet(txout_atlantic_interface),
	.override_avalon_st_ready(actual_override_tx_ready),
	.atlantic_adr(controlled_tx_adr)
	);
	
assign gxb_powerdown = 1'b0;	
assign rxin = XCVR_RX;
assign XCVR_TX = txout;
assign ctrl_tc_force_train = 1'b0;
assign trefclk = CLKIN_125MHz;
assign mreset_n = reset_serialite_n;
assign rx_clk = rrefclk;
assign ctrl_tc_serial_lpbena = actual_xcvr_loopback_enable;
assign cal_blk_clk = CLKIN_50MHz;


assign rxhpp_clk = rxin_atlantic_interface.clk;
assign rxhpp_ena = rxin_atlantic_interface.ena;
assign rxin_atlantic_interface.dav = rxhpp_dav;
assign rxin_atlantic_interface.val = rxhpp_val;
assign rxin_atlantic_interface.sop = rxhpp_sop;
assign rxin_atlantic_interface.eop = rxhpp_eop;
assign rxin_atlantic_interface.mty = rxhpp_mty;
assign rxin_atlantic_interface.err = rxhpp_err;
assign rxin_atlantic_interface.dat = rxhpp_dat;
assign rxin_atlantic_interface.adr = rxhpp_adr;

assign current_rx_packet_id = rxin_atlantic_interface.adr;

assign txout_atlantic_interface.dav = txhpp_dav;
assign txhpp_clk = txout_atlantic_interface.clk;
assign txhpp_ena = txout_atlantic_interface.ena;
assign txhpp_sop = txout_atlantic_interface.sop;
assign txhpp_eop = txout_atlantic_interface.eop;
assign txhpp_err = txout_atlantic_interface.err;
assign txhpp_mty = txout_atlantic_interface.mty;
assign txhpp_dat = txout_atlantic_interface.dat;
assign txhpp_adr = txout_atlantic_interface.adr;

always @(posedge txhpp_clk)
begin
       if (txhpp_ena && txhpp_dav)
	   begin
	        current_tx_packet_id_counter <= current_tx_packet_id_counter + 1;	   
	   end 
end

Reconfig_GX Reconfig_GX_for_transceiver_40bits_basic_inst
   (
    .reconfig_clk              (reconfig_clk),
    .reconfig_fromgxb          (reconfig_fromgxb),
    .busy                      (xcvr_reconfig_busy),
    .error                     (reconfig_gx_error),
    .reconfig_togxb            (reconfig_togxb)
    );

serialite_xcvr_priority_only
serialite_xcvr_priority_only_inst
 (
	.rxin                         ( rxin                        ),
	.ctrl_tc_force_train          ( ctrl_tc_force_train         ),
	.trefclk                      ( trefclk                     ),
	.cal_blk_clk                  ( cal_blk_clk                 ),
	.gxb_powerdown                ( gxb_powerdown               ),
	.mreset_n                     ( mreset_n                    ),
	.rxhpp_clk                    ( rxhpp_clk                   ),
	.rxhpp_ena                    ( rxhpp_ena                   ),
	.ctl_rxhpp_ftl                ( ctl_rxhpp_ftl               ),
	.ctl_rxhpp_eopdav             ( ctl_rxhpp_eopdav            ),
	.txhpp_clk                    ( txhpp_clk                   ),
	.txhpp_ena                    ( txhpp_ena                   ),
	.txhpp_sop                    ( txhpp_sop                   ),
	.txhpp_eop                    ( txhpp_eop                   ),
	.txhpp_err                    ( txhpp_err                   ),
	.txhpp_mty                    ( txhpp_mty                   ),
	.txhpp_dat                    ( txhpp_dat                   ),
	.txhpp_adr                    ( txhpp_adr                   ),
	.ctl_txhpp_fth                ( ctl_txhpp_fth               ),
	.ctrl_tc_serial_lpbena        ( ctrl_tc_serial_lpbena       ),
	.reconfig_clk                 ( reconfig_clk                ),
	.reconfig_togxb               ( reconfig_togxb              ),
	.rrefclk                      ( rrefclk                     ),
	.stat_rr_link                 ( stat_rr_link                ),
	.txout                        ( txout                       ),
	.stat_tc_pll_locked           ( stat_tc_pll_locked          ),
	.tx_coreclock                 ( tx_coreclock                ),
	.rcvd_clk_out                 ( rcvd_clk_out                ),
	.err_rr_8berrdet              ( err_rr_8berrdet             ),
	.err_rr_disp                  ( err_rr_disp                 ),
	.err_rr_pcfifo_uflw           ( err_rr_pcfifo_uflw          ),
	.err_rr_pcfifo_oflw           ( err_rr_pcfifo_oflw          ),
	.err_rr_rlv                   ( err_rr_rlv                  ),
	.stat_rr_gxsync               ( stat_rr_gxsync              ),
	.stat_rr_freqlock             ( stat_rr_freqlock            ),
	.stat_rr_rxlocked             ( stat_rr_rxlocked            ),
	.stat_rr_pattdet              ( stat_rr_pattdet             ),
	.rxhpp_sop                    ( rxhpp_sop                   ),
	.rxhpp_eop                    ( rxhpp_eop                   ),
	.rxhpp_err                    ( rxhpp_err                   ),
	.rxhpp_mty                    ( rxhpp_mty                   ),
	.rxhpp_dat                    ( rxhpp_dat                   ),
	.rxhpp_adr                    ( rxhpp_adr                   ),
	.rxhpp_val                    ( rxhpp_val                   ),
	.rxhpp_dav                    ( rxhpp_dav                   ),
	.stat_rxhpp_empty             ( stat_rxhpp_empty            ),
	.err_tc_rxhpp_oflw            ( err_tc_rxhpp_oflw           ),
	.err_tc_pcfifo_oflw           ( err_tc_pcfifo_oflw          ),
	.err_tc_pcfifo_uflw           ( err_tc_pcfifo_uflw          ),
	.err_txhpp_oflw               ( err_txhpp_oflw              ),
	.txhpp_dav                    ( txhpp_dav                   ),
	.reconfig_fromgxb             ( reconfig_fromgxb            ),
	.stat_tc_rst_done             ( stat_tc_rst_done            ),
	.err_rr_foffre_oflw           ( err_rr_foffre_oflw          ),
	.stat_tc_foffre_empty         ( stat_tc_foffre_empty        ),
	.stat_rr_ebprx                ( stat_rr_ebprx               ),
	.err_rr_bip8                  ( err_rr_bip8                 ),
	.err_rr_crc                   ( err_rr_crc                  ),
  //.err_rr_fcrx_bne              ( err_rr_fcrx_bne             ),
  //.err_rr_roerx_bne             ( err_rr_roerx_bne            ),
	.err_rr_invalid_lmprx         ( err_rr_invalid_lmprx        ),
	.err_rr_missing_start_dcw     ( err_rr_missing_start_dcw    ),
	.err_rr_addr_mismatch         ( err_rr_addr_mismatch        ),
	.err_rr_pol_rev_required      ( err_rr_pol_rev_required     ),
	.err_tc_roe_rsnd_gt4          ( err_tc_roe_rsnd_gt4         ),
	.stat_tc_roe_timeout          ( stat_tc_roe_timeout         ),
	.stat_rr_roe_ack              ( stat_rr_roe_ack             ),
	.stat_rr_roe_nack             ( stat_rr_roe_nack            ),
    .err_tc_is_drop               (err_tc_is_drop               ),
    .err_tc_lm_fifo_oflw          (err_tc_lm_fifo_oflw          ),
    .err_rr_rx2txfifo_oflw        (err_rr_rx2txfifo_oflw        ),
	.stat_rr_fc_rdp_valid(stat_rr_fc_rdp_valid),
	.stat_rr_fc_hpp_valid(stat_rr_fc_hpp_valid),
	.stat_rr_fc_value(stat_rr_fc_value),
	.stat_tc_fc_rdp_retransmit(stat_tc_fc_rdp_retransmit),
	.stat_tc_fc_hpp_retransmit(stat_tc_fc_hpp_retransmit),
	.stat_tc_rdp_thresh_breach(stat_tc_rdp_thresh_breach),
	.stat_tc_hpp_thresh_breach(stat_tc_hpp_thresh_breach)
	
	);

			
    parameter local_regfile_data_numbytes        =   4;
    parameter local_regfile_data_width           =   8*local_regfile_data_numbytes;
    parameter local_regfile_desc_numbytes        =  16;
    parameter local_regfile_desc_width           =   8*local_regfile_desc_numbytes;
    parameter num_of_local_regfile_control_regs  =  16;
    parameter num_of_local_regfile_status_regs   =  16;
	
    wire [local_regfile_data_width-1:0] local_regfile_control_regs_default_vals[num_of_local_regfile_control_regs-1:0];
    wire [local_regfile_data_width-1:0] local_regfile_control_regs             [num_of_local_regfile_control_regs-1:0];
    wire [local_regfile_data_width-1:0] local_regfile_control_regs_bitwidth    [num_of_local_regfile_control_regs-1:0];
    wire [local_regfile_data_width-1:0] local_regfile_control_status           [num_of_local_regfile_status_regs-1:0];
    wire [local_regfile_desc_width-1:0] local_regfile_control_desc             [num_of_local_regfile_control_regs-1:0];
    wire [local_regfile_desc_width-1:0] local_regfile_status_desc              [num_of_local_regfile_status_regs-1:0];
	
    wire local_regfile_control_rd_error;
	wire local_regfile_control_async_reset = 1'b0;
	wire local_regfile_control_wr_error;
	wire local_regfile_control_transaction_error;
	
	
	wire [3:0] local_regfile_main_sm;
	wire [2:0] local_regfile_tx_sm;
	wire [7:0] local_regfile_command_count;
	
	assign local_regfile_control_regs_default_vals[0]  =  0;
    assign local_regfile_control_desc[0]               = "controlled_tx_adr";
    assign controlled_tx_adr                           = local_regfile_control_regs[0];
    assign local_regfile_control_regs_bitwidth[0]      = 8;		
	 
	 
	assign local_regfile_control_regs_default_vals[1] = ctl_rxhpp_ftl_DEFAULT;
    assign local_regfile_control_desc[1] = "ctl_rxhpp_ftl";
    assign ctl_rxhpp_ftl                 = local_regfile_control_regs[1];
    assign local_regfile_control_regs_bitwidth[1] = 8;		
	 
	assign local_regfile_control_regs_default_vals[2] = ctl_rxhpp_eopdav_DEFAULT;
    assign local_regfile_control_desc[2] = "ctl_rxhpp_eopdav";
    assign ctl_rxhpp_eopdav = local_regfile_control_regs[2];
    assign local_regfile_control_regs_bitwidth[2] = 1;		
	 
	assign local_regfile_control_regs_default_vals[3] = ctl_txhpp_fth_DEFAULT;
    assign local_regfile_control_desc[3] = "ctl_txhpp_fth";
    assign ctl_txhpp_fth    = local_regfile_control_regs[3];
    assign local_regfile_control_regs_bitwidth[3] = 8;			
	
	assign local_regfile_control_regs_default_vals[4] = 0;
    assign local_regfile_control_desc[4] = "loopback_enable";
    assign xcvr_loopback_enable  = local_regfile_control_regs[4];
    assign local_regfile_control_regs_bitwidth[4] = 1;		
	 
	assign local_regfile_control_regs_default_vals[5] = 1;
    assign local_regfile_control_desc[5] = "resetSerialite_n";
    assign reset_serialite_n = local_regfile_control_regs[5];
    assign local_regfile_control_regs_bitwidth[5] = 1;		
	
	
	assign local_regfile_control_regs_default_vals[6] = 0;
    assign local_regfile_control_desc[6] = "ovrride_rx_ready";
    assign override_ready = local_regfile_control_regs[6];
    assign local_regfile_control_regs_bitwidth[6] = 1;		
	 
	assign local_regfile_control_regs_default_vals[7] = 0;
    assign local_regfile_control_desc[7] = "ovrride_tx_ready";
    assign override_tx_ready = local_regfile_control_regs[7];
    assign local_regfile_control_regs_bitwidth[7] = 1;		
	 
	assign local_regfile_control_regs_default_vals[8] = 0;
    assign local_regfile_control_desc[8] = "atlConvFifoFlush";
    assign atlantic_to_st_converter_fifo_flush = local_regfile_control_regs[8];
    assign local_regfile_control_regs_bitwidth[8] = 1;		
	 
	assign local_regfile_control_status[0] = 32'h12345678;
	assign local_regfile_status_desc[0]    ="StatusAlive";
		
    assign local_regfile_control_status[1] =  slite_status;
	assign local_regfile_status_desc[1]    = "slite_status";
	  
    assign local_regfile_control_status[2] = slite_error;
	assign local_regfile_status_desc[2]    = "slite_error"; 

    assign local_regfile_control_status[3] = avalon_st_packet_rx_in.data;
	assign local_regfile_status_desc[3]    = "rx_in_data"; 

    assign local_regfile_control_status[4] = avalon_st_packet_tx_out.data;
	assign local_regfile_status_desc[4]    = "tx_out_data"; 

    assign local_regfile_control_status[5] = current_rx_packet_id;
	assign local_regfile_status_desc[5]    = "rx_packet_id"; 
	
	assign local_regfile_control_status[6] = current_tx_packet_id_counter;
	assign local_regfile_status_desc[6]    = "tx_packet_id"; 
	
	
	assign local_regfile_control_status[7] = {avalon_st_packet_rx_in.ready,avalon_st_packet_rx_in.valid,avalon_st_packet_rx_in.sop,
	                                          avalon_st_packet_rx_in.eop,avalon_st_packet_rx_in.empty[1:0],avalon_st_packet_rx_in.error};
	assign local_regfile_status_desc[7]    = "rx_pkt_sigs"; 
	
	
	assign local_regfile_control_status[8] = {avalon_st_packet_tx_out.ready,avalon_st_packet_tx_out.valid,avalon_st_packet_tx_out.sop,
	                                          avalon_st_packet_tx_out.eop,avalon_st_packet_tx_out.empty[1:0],avalon_st_packet_tx_out.error};
	assign local_regfile_status_desc[8]    = "tx_pkt_sigs"; 
	
	
    assign local_regfile_control_status[9] = rxin_atlantic_interface.dat;
	assign local_regfile_status_desc[9]    = "atl_rx_in_data"; 

    assign local_regfile_control_status[10] = txout_atlantic_interface.dat;
	assign local_regfile_status_desc[10]    = "atl_tx_out_data"; 
	
    assign local_regfile_control_status[11] = {
	                                          rxin_atlantic_interface.eop,
	                                          rxin_atlantic_interface.sop,
											  rxin_atlantic_interface.ena,
	                                          rxin_atlantic_interface.dav,
											  rxin_atlantic_interface.mty[1:0],
											  rxin_atlantic_interface.val,
											  rxin_atlantic_interface.err
											  };
	assign local_regfile_status_desc[11]    = "atl_rx_pkt_sigs"; 
	
	
	assign local_regfile_control_status[12] =  {
	                                          txout_atlantic_interface.eop,
	                                          txout_atlantic_interface.sop,
											  txout_atlantic_interface.ena,
	                                          txout_atlantic_interface.dav,
											  txout_atlantic_interface.mty[1:0],
											  txout_atlantic_interface.val,
											  txout_atlantic_interface.err
											  };
	assign local_regfile_status_desc[12]    = "atl_tx_pkt_sigs"; 
	
	
	assign local_regfile_control_status[13] =  {
	                                          err_tc_roe_rsnd_gt4,
	                                          stat_tc_roe_timeout,
	                                          stat_rr_roe_ack,
	                                          stat_rr_roe_nack
											           };
	assign local_regfile_status_desc[13]    = "RetryOnErrorStat"; 
	
	assign local_regfile_control_status[14] = 
			{
			 stat_tc_rdp_thresh_breach,
	         stat_tc_hpp_thresh_breach,			
			 stat_rr_fc_rdp_valid,
	         stat_rr_fc_hpp_valid,		     
	         stat_tc_fc_rdp_retransmit,
	         stat_tc_fc_hpp_retransmit,
			 stat_rr_fc_value
			 };
			 
	assign local_regfile_status_desc[14]    = "FlowCtrlStats"; 

	assign local_regfile_control_status[15] = 
			{
			 atlantic_to_st_converter_fifo_almost_empty,
			 atlantic_to_st_converter_fifo_almost_full,
			 atlantic_to_st_converter_fifo_empty,
			 atlantic_to_st_converter_fifo_full,
			 atlantic_to_st_converter_fifo_usedw
			 };
			 
	assign local_regfile_status_desc[15]    = "AtlToSTFifoStats"; 

	
	uart_controlled_register_file_ver3
	#( 
	  .NUM_OF_CONTROL_REGS(num_of_local_regfile_control_regs),
	  .NUM_OF_STATUS_REGS(num_of_local_regfile_status_regs),
	  .DATA_WIDTH_IN_BYTES  (local_regfile_data_numbytes),
      .DESC_WIDTH_IN_BYTES  (local_regfile_desc_numbytes),
	  .INIT_ALL_CONTROL_REGS_TO_DEFAULT (1'b0),  
	  .CONTROL_REGS_DEFAULT_VAL         (0),
	  .CLOCK_SPEED_IN_HZ(50000000),
      .UART_BAUD_RATE_IN_HZ(REGFILE_BAUD_RATE)
	)
	local_uart_register_file
	(	
	 .DISPLAY_NAME({"Slhpp_",xcvr_name}),
	 .CLK(CLKIN_50MHz),
	 .REG_ACTIVE_HIGH_ASYNC_RESET(local_regfile_control_async_reset),
	 .CONTROL(local_regfile_control_regs),
	 .CONTROL_DESC(local_regfile_control_desc),
	 .CONTROL_BITWIDTH(local_regfile_control_regs_bitwidth),
	 .STATUS(local_regfile_control_status),
	 .STATUS_DESC (local_regfile_status_desc),
	 .CONTROL_INIT_VAL(local_regfile_control_regs_default_vals),
	 .TRANSACTION_ERROR(local_regfile_control_transaction_error),
	 .WR_ERROR(local_regfile_control_wr_error),
	 .RD_ERROR(local_regfile_control_rd_error),
	 .USER_TYPE(uart_regfile_types::GENERIC_UART_REGFILE),
	 .NUM_SECONDARY_UARTS(NUM_SECONDARY_UARTS),
     .ADDRESS_OF_THIS_UART(ADDRESS_OF_THIS_UART),
     .IS_SECONDARY_UART(IS_SECONDARY_UART),	 
	 
	 //UART
	 .uart_active_high_async_reset(1'b0),
	 .rxd(uart_rx),
	 .txd(uart_tx),
	 
	 //UART DEBUG
	 .main_sm               (local_regfile_main_sm),
	 .tx_sm                 (local_regfile_tx_sm),
	 .command_count         (local_regfile_command_count)
	  
	);
	
		
	
	
endmodule
`default_nettype wire
`endif
