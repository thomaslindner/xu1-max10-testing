// Generated by SerialLite II 14.1 [Altera, IP Toolbench 1.3.0 Build 190]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2015 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.

module four_lane_seriallite_and_phy (
	rxin,
	ctrl_tc_force_train,
	trefclk,
	cal_blk_clk,
	gxb_powerdown,
	mreset_n,
	txrdp_ena,
	txrdp_dat,
	ctrl_tc_serial_lpbena,
	reconfig_clk,
	reconfig_togxb,
	rrefclk,
	stat_rr_link,
	txout,
	stat_tc_pll_locked,
	tx_coreclock,
	rcvd_clk_out,
	err_rr_8berrdet,
	err_rr_disp,
	err_rr_pcfifo_uflw,
	err_rr_pcfifo_oflw,
	err_rr_rlv,
	stat_rr_gxsync,
	stat_rr_freqlock,
	stat_rr_rxlocked,
	stat_rr_pattdet,
	rxrdp_ena,
	rxrdp_dat,
	err_tc_pcfifo_oflw,
	err_tc_pcfifo_uflw,
	txrdp_dav,
	reconfig_fromgxb,
	stat_tc_rst_done,
	err_rr_pol_rev_required,
	err_rr_dskfifo_oflw,
	stat_rr_dskw_done_bc);

	input	[3:0]	rxin;
	input		ctrl_tc_force_train;
	input		trefclk;
	input		cal_blk_clk;
	input		gxb_powerdown;
	input		mreset_n;
	input		txrdp_ena;
	input	[127:0]	txrdp_dat;
	input		ctrl_tc_serial_lpbena;
	input		reconfig_clk;
	input	[3:0]	reconfig_togxb;
	output		rrefclk;
	output		stat_rr_link;
	output	[3:0]	txout;
	output		stat_tc_pll_locked;
	output		tx_coreclock;
	output	[3:0]	rcvd_clk_out;
	output	[15:0]	err_rr_8berrdet;
	output	[15:0]	err_rr_disp;
	output	[3:0]	err_rr_pcfifo_uflw;
	output	[3:0]	err_rr_pcfifo_oflw;
	output	[3:0]	err_rr_rlv;
	output	[15:0]	stat_rr_gxsync;
	output	[3:0]	stat_rr_freqlock;
	output	[3:0]	stat_rr_rxlocked;
	output	[15:0]	stat_rr_pattdet;
	output		rxrdp_ena;
	output	[127:0]	rxrdp_dat;
	output	[3:0]	err_tc_pcfifo_oflw;
	output	[3:0]	err_tc_pcfifo_uflw;
	output		txrdp_dav;
	output	[16:0]	reconfig_fromgxb;
	output		stat_tc_rst_done;
	output	[3:0]	err_rr_pol_rev_required;
	output		err_rr_dskfifo_oflw;
	output		stat_rr_dskw_done_bc;
endmodule
