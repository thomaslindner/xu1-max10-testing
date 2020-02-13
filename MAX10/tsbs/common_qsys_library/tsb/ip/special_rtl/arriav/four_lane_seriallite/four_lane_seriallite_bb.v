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

module four_lane_seriallite (
	rx_parallel_data_out,
	rx_coreclk,
	rx_ctrldetect,
	stat_rr_pattdet,
	err_rr_disp,
	tx_coreclk,
	ctrl_tc_force_train,
	mreset_n,
	txrdp_ena,
	txrdp_dat,
	flip_polarity,
	rrefclk,
	stat_rr_link,
	err_rr_8berrdet,
	tx_parallel_data_in,
	tx_ctrlenable,
	tx_coreclock,
	rxrdp_ena,
	rxrdp_dat,
	txrdp_dav,
	err_rr_pol_rev_required,
	err_rr_dskfifo_oflw,
	stat_rr_dskw_done_bc);

	input	[127:0]	rx_parallel_data_out;
	input		rx_coreclk;
	input	[15:0]	rx_ctrldetect;
	input	[15:0]	stat_rr_pattdet;
	input	[15:0]	err_rr_disp;
	input		tx_coreclk;
	input		ctrl_tc_force_train;
	input		mreset_n;
	input		txrdp_ena;
	input	[127:0]	txrdp_dat;
	output	[3:0]	flip_polarity;
	output		rrefclk;
	output		stat_rr_link;
	output	[15:0]	err_rr_8berrdet;
	output	[127:0]	tx_parallel_data_in;
	output	[15:0]	tx_ctrlenable;
	output		tx_coreclock;
	output		rxrdp_ena;
	output	[127:0]	rxrdp_dat;
	output		txrdp_dav;
	output	[3:0]	err_rr_pol_rev_required;
	output		err_rr_dskfifo_oflw;
	output		stat_rr_dskw_done_bc;
endmodule
