// megafunction wizard: %SerialLite II v14.1%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			five_lane_seriallite_slite2_top
// ============================================================
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


module five_lane_seriallite (
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


	input	[159:0]	rx_parallel_data_out;
	input		rx_coreclk;
	input	[19:0]	rx_ctrldetect;
	input	[19:0]	stat_rr_pattdet;
	input	[19:0]	err_rr_disp;
	input		tx_coreclk;
	input		ctrl_tc_force_train;
	input		mreset_n;
	input		txrdp_ena;
	input	[159:0]	txrdp_dat;
	output	[4:0]	flip_polarity;
	output		rrefclk;
	output		stat_rr_link;
	output	[19:0]	err_rr_8berrdet;
	output	[159:0]	tx_parallel_data_in;
	output	[19:0]	tx_ctrlenable;
	output		tx_coreclock;
	output		rxrdp_ena;
	output	[159:0]	rxrdp_dat;
	output		txrdp_dav;
	output	[4:0]	err_rr_pol_rev_required;
	output		err_rr_dskfifo_oflw;
	output		stat_rr_dskw_done_bc;

	wire signal_wire0 = 1'b0;
	wire signal_wire1 = 1'b0;

	five_lane_seriallite_slite2_top	five_lane_seriallite_slite2_top_inst(
		.rx_parallel_data_out(rx_parallel_data_out),
		.rx_coreclk(rx_coreclk),
		.rx_ctrldetect(rx_ctrldetect),
		.stat_rr_pattdet(stat_rr_pattdet),
		.err_rr_disp(err_rr_disp),
		.ctrl_rr_enadscram(signal_wire0),
		.tx_coreclk(tx_coreclk),
		.ctrl_tc_enascram(signal_wire1),
		.ctrl_tc_force_train(ctrl_tc_force_train),
		.mreset_n(mreset_n),
		.txrdp_ena(txrdp_ena),
		.txrdp_dat(txrdp_dat),
		.flip_polarity(flip_polarity),
		.rrefclk(rrefclk),
		.stat_rr_link(stat_rr_link),
		.err_rr_8berrdet(err_rr_8berrdet),
		.tx_parallel_data_in(tx_parallel_data_in),
		.tx_ctrlenable(tx_ctrlenable),
		.tx_coreclock(tx_coreclock),
		.rxrdp_ena(rxrdp_ena),
		.rxrdp_dat(rxrdp_dat),
		.txrdp_dav(txrdp_dav),
		.err_rr_pol_rev_required(err_rr_pol_rev_required),
		.err_rr_dskfifo_oflw(err_rr_dskfifo_oflw),
		.stat_rr_dskw_done_bc(stat_rr_dskw_done_bc));
endmodule

// =========================================================
// SerialLite II Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, SerialLite II Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="SerialLite II MegaCore Function"  version="14.1"  build="190"  iptb_version="1.3.0 Build 190"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.MVCModel"  active_core="five_lane_seriallite_slite2_top" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "T_CFG_TEST" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "alt_top" value="five_lane_seriallite_sister_slite2_top"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "megawizard2" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "activate_atstartup" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "window_location" value="center"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_iptb_top" value="five_lane_seriallite"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_cbx_hdl_language" value="verilog"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_altgxb_config" value="Configure Transceiver..."  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_family_id" value="df_arriav"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "intended_family" value="df_arriav"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_port_type" value="bidir"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_SSYNC" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_TSZE" value="4"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_DRATE" value="5000"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_ref_clk_freq" value="156.25"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ref_clk_config" value="156.25"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_SCRAM_ENA" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_BROADCAST" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_DSCRAM_ENA" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "tx_lane_config" value="5"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "rx_lane_config" value="5"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_TX_NUM_LANES" value="5"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_RX_NUM_LANES" value="5"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "tx_panel" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "rx_panel" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "reconfig_panel" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "clk_comp_panel" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_FREQ_TOLERANCE" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_STREAM" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_packet_select" value="1"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_PORT_ENA" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_DATA_PORT_ENA" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_DATA_FC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_DATA_FC_TIME" value="128"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_DATA_FC_THRES" value="256"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_DATA_FC_REFRESH" value="64"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_TX_DATA_PSIZE" value="1024"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RX_DATA_PSIZE" value="1024"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_FC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_FC_TIME" value="128"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_FC_THRES" value="256"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_FC_REFRESH" value="64"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_TX_PRI_PSIZE" value="1024"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RX_PRI_PSIZE" value="1024"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_PRI_SEGSIZE" value="256"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_ROE_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_ROE_TIMEOUT" value="1024"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_TX_DATA_CRC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RX_DATA_CRC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_TX_PRI_CRC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RX_PRI_CRC_ENA" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_TX_CRC" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RX_CRC" value="0"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "priority_panel" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "data_panel" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "tx_crc_panel" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "rx_crc_panel" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_VOD" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_VOD_CONFIG" value="CONTROL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_PREEMPH" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_PREEMP_CONFIG" value="CONTROL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_RXEQ" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_RXEX_CONFIG" value="CONTROL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_TX_PLL_BW" value="LOW"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_RX_PLL_BW" value="NEW_LOW"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "p_VCCH" value="1.5"  type="STRING"  enable="0" />
// Retrieval info:      <PRIVATE name = "p_RECONFIG_START_CHANNEL" value="0"  type="INTEGER"  enable="0" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "greybox">
// Retrieval info:      <PRIVATE name = "family" value="@simgen.family@"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "filename" value="five_lane_seriallite_syn.v"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "enabled" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "language" value="Verilog HDL"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "filename" value="five_lane_seriallite.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "hdl_generator">
// Retrieval info:      <PRIVATE name = "report" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "blackbox" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "component" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "symbol" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_sister">
// Retrieval info:      <PRIVATE name = "filename" value="five_lane_seriallite_sister_slite2_top.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:     <NAMESPACE name = "quartus_settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="5ASTFD5K3F40I3ES"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Arria V"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS/>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================
