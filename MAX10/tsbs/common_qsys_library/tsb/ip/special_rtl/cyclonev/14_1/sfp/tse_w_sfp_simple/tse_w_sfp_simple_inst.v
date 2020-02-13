	tse_w_sfp_simple u0 (
		.clk_10_clk                                             (<connected-to-clk_10_clk>),                                             //                                clk_10.clk
		.clk_100_clk                                            (<connected-to-clk_100_clk>),                                            //                               clk_100.clk
		.clk_125_enet_base_in_clk_clk                           (<connected-to-clk_125_enet_base_in_clk_clk>),                           //              clk_125_enet_base_in_clk.clk
		.clk_50_clk                                             (<connected-to-clk_50_clk>),                                             //                                clk_50.clk
		.mm_bridge_0_s0_waitrequest                             (<connected-to-mm_bridge_0_s0_waitrequest>),                             //                        mm_bridge_0_s0.waitrequest
		.mm_bridge_0_s0_readdata                                (<connected-to-mm_bridge_0_s0_readdata>),                                //                                      .readdata
		.mm_bridge_0_s0_readdatavalid                           (<connected-to-mm_bridge_0_s0_readdatavalid>),                           //                                      .readdatavalid
		.mm_bridge_0_s0_burstcount                              (<connected-to-mm_bridge_0_s0_burstcount>),                              //                                      .burstcount
		.mm_bridge_0_s0_writedata                               (<connected-to-mm_bridge_0_s0_writedata>),                               //                                      .writedata
		.mm_bridge_0_s0_address                                 (<connected-to-mm_bridge_0_s0_address>),                                 //                                      .address
		.mm_bridge_0_s0_write                                   (<connected-to-mm_bridge_0_s0_write>),                                   //                                      .write
		.mm_bridge_0_s0_read                                    (<connected-to-mm_bridge_0_s0_read>),                                    //                                      .read
		.mm_bridge_0_s0_byteenable                              (<connected-to-mm_bridge_0_s0_byteenable>),                              //                                      .byteenable
		.mm_bridge_0_s0_debugaccess                             (<connected-to-mm_bridge_0_s0_debugaccess>),                             //                                      .debugaccess
		.reset_100_reset_n                                      (<connected-to-reset_100_reset_n>),                                      //                             reset_100.reset_n
		.reset_50_reset_n                                       (<connected-to-reset_50_reset_n>),                                       //                              reset_50.reset_n
		.tse_sgdma_rx_csr_irq_irq                               (<connected-to-tse_sgdma_rx_csr_irq_irq>),                               //                  tse_sgdma_rx_csr_irq.irq
		.tse_sgdma_rx_m_write_waitrequest                       (<connected-to-tse_sgdma_rx_m_write_waitrequest>),                       //                  tse_sgdma_rx_m_write.waitrequest
		.tse_sgdma_rx_m_write_address                           (<connected-to-tse_sgdma_rx_m_write_address>),                           //                                      .address
		.tse_sgdma_rx_m_write_write                             (<connected-to-tse_sgdma_rx_m_write_write>),                             //                                      .write
		.tse_sgdma_rx_m_write_writedata                         (<connected-to-tse_sgdma_rx_m_write_writedata>),                         //                                      .writedata
		.tse_sgdma_rx_m_write_byteenable                        (<connected-to-tse_sgdma_rx_m_write_byteenable>),                        //                                      .byteenable
		.tse_sgdma_tx_csr_irq_irq                               (<connected-to-tse_sgdma_tx_csr_irq_irq>),                               //                  tse_sgdma_tx_csr_irq.irq
		.tse_sgdma_tx_m_read_readdata                           (<connected-to-tse_sgdma_tx_m_read_readdata>),                           //                   tse_sgdma_tx_m_read.readdata
		.tse_sgdma_tx_m_read_readdatavalid                      (<connected-to-tse_sgdma_tx_m_read_readdatavalid>),                      //                                      .readdatavalid
		.tse_sgdma_tx_m_read_waitrequest                        (<connected-to-tse_sgdma_tx_m_read_waitrequest>),                        //                                      .waitrequest
		.tse_sgdma_tx_m_read_address                            (<connected-to-tse_sgdma_tx_m_read_address>),                            //                                      .address
		.tse_sgdma_tx_m_read_read                               (<connected-to-tse_sgdma_tx_m_read_read>),                               //                                      .read
		.tse_sgdma_tx_out_data                                  (<connected-to-tse_sgdma_tx_out_data>),                                  //                      tse_sgdma_tx_out.data
		.tse_sgdma_tx_out_valid                                 (<connected-to-tse_sgdma_tx_out_valid>),                                 //                                      .valid
		.tse_sgdma_tx_out_ready                                 (<connected-to-tse_sgdma_tx_out_ready>),                                 //                                      .ready
		.tse_sgdma_tx_out_endofpacket                           (<connected-to-tse_sgdma_tx_out_endofpacket>),                           //                                      .endofpacket
		.tse_sgdma_tx_out_startofpacket                         (<connected-to-tse_sgdma_tx_out_startofpacket>),                         //                                      .startofpacket
		.tse_sgdma_tx_out_empty                                 (<connected-to-tse_sgdma_tx_out_empty>),                                 //                                      .empty
		.tse_tse_mac_mac_mdio_connection_mdc                    (<connected-to-tse_tse_mac_mac_mdio_connection_mdc>),                    //       tse_tse_mac_mac_mdio_connection.mdc
		.tse_tse_mac_mac_mdio_connection_mdio_in                (<connected-to-tse_tse_mac_mac_mdio_connection_mdio_in>),                //                                      .mdio_in
		.tse_tse_mac_mac_mdio_connection_mdio_out               (<connected-to-tse_tse_mac_mac_mdio_connection_mdio_out>),               //                                      .mdio_out
		.tse_tse_mac_mac_mdio_connection_mdio_oen               (<connected-to-tse_tse_mac_mac_mdio_connection_mdio_oen>),               //                                      .mdio_oen
		.tse_tse_mac_mac_misc_connection_xon_gen                (<connected-to-tse_tse_mac_mac_misc_connection_xon_gen>),                //       tse_tse_mac_mac_misc_connection.xon_gen
		.tse_tse_mac_mac_misc_connection_xoff_gen               (<connected-to-tse_tse_mac_mac_misc_connection_xoff_gen>),               //                                      .xoff_gen
		.tse_tse_mac_mac_misc_connection_ff_tx_crc_fwd          (<connected-to-tse_tse_mac_mac_misc_connection_ff_tx_crc_fwd>),          //                                      .ff_tx_crc_fwd
		.tse_tse_mac_mac_misc_connection_ff_tx_septy            (<connected-to-tse_tse_mac_mac_misc_connection_ff_tx_septy>),            //                                      .ff_tx_septy
		.tse_tse_mac_mac_misc_connection_tx_ff_uflow            (<connected-to-tse_tse_mac_mac_misc_connection_tx_ff_uflow>),            //                                      .tx_ff_uflow
		.tse_tse_mac_mac_misc_connection_ff_tx_a_full           (<connected-to-tse_tse_mac_mac_misc_connection_ff_tx_a_full>),           //                                      .ff_tx_a_full
		.tse_tse_mac_mac_misc_connection_ff_tx_a_empty          (<connected-to-tse_tse_mac_mac_misc_connection_ff_tx_a_empty>),          //                                      .ff_tx_a_empty
		.tse_tse_mac_mac_misc_connection_rx_err_stat            (<connected-to-tse_tse_mac_mac_misc_connection_rx_err_stat>),            //                                      .rx_err_stat
		.tse_tse_mac_mac_misc_connection_rx_frm_type            (<connected-to-tse_tse_mac_mac_misc_connection_rx_frm_type>),            //                                      .rx_frm_type
		.tse_tse_mac_mac_misc_connection_ff_rx_dsav             (<connected-to-tse_tse_mac_mac_misc_connection_ff_rx_dsav>),             //                                      .ff_rx_dsav
		.tse_tse_mac_mac_misc_connection_ff_rx_a_full           (<connected-to-tse_tse_mac_mac_misc_connection_ff_rx_a_full>),           //                                      .ff_rx_a_full
		.tse_tse_mac_mac_misc_connection_ff_rx_a_empty          (<connected-to-tse_tse_mac_mac_misc_connection_ff_rx_a_empty>),          //                                      .ff_rx_a_empty
		.tse_tse_mac_serdes_control_connection_rx_recovclkout   (<connected-to-tse_tse_mac_serdes_control_connection_rx_recovclkout>),   // tse_tse_mac_serdes_control_connection.rx_recovclkout
		.tse_tse_mac_serdes_control_connection_reconfig_togxb   (<connected-to-tse_tse_mac_serdes_control_connection_reconfig_togxb>),   //                                      .reconfig_togxb
		.tse_tse_mac_serdes_control_connection_reconfig_fromgxb (<connected-to-tse_tse_mac_serdes_control_connection_reconfig_fromgxb>), //                                      .reconfig_fromgxb
		.tse_tse_mac_serial_connection_rxp                      (<connected-to-tse_tse_mac_serial_connection_rxp>),                      //         tse_tse_mac_serial_connection.rxp
		.tse_tse_mac_serial_connection_txp                      (<connected-to-tse_tse_mac_serial_connection_txp>),                      //                                      .txp
		.tse_tse_mac_status_led_connection_crs                  (<connected-to-tse_tse_mac_status_led_connection_crs>),                  //     tse_tse_mac_status_led_connection.crs
		.tse_tse_mac_status_led_connection_link                 (<connected-to-tse_tse_mac_status_led_connection_link>),                 //                                      .link
		.tse_tse_mac_status_led_connection_panel_link           (<connected-to-tse_tse_mac_status_led_connection_panel_link>),           //                                      .panel_link
		.tse_tse_mac_status_led_connection_col                  (<connected-to-tse_tse_mac_status_led_connection_col>),                  //                                      .col
		.tse_tse_mac_status_led_connection_an                   (<connected-to-tse_tse_mac_status_led_connection_an>),                   //                                      .an
		.tse_tse_mac_status_led_connection_char_err             (<connected-to-tse_tse_mac_status_led_connection_char_err>),             //                                      .char_err
		.tse_tse_mac_status_led_connection_disp_err             (<connected-to-tse_tse_mac_status_led_connection_disp_err>),             //                                      .disp_err
		.tse_tse_mac_transmit_data                              (<connected-to-tse_tse_mac_transmit_data>),                              //                  tse_tse_mac_transmit.data
		.tse_tse_mac_transmit_endofpacket                       (<connected-to-tse_tse_mac_transmit_endofpacket>),                       //                                      .endofpacket
		.tse_tse_mac_transmit_error                             (<connected-to-tse_tse_mac_transmit_error>),                             //                                      .error
		.tse_tse_mac_transmit_empty                             (<connected-to-tse_tse_mac_transmit_empty>),                             //                                      .empty
		.tse_tse_mac_transmit_ready                             (<connected-to-tse_tse_mac_transmit_ready>),                             //                                      .ready
		.tse_tse_mac_transmit_startofpacket                     (<connected-to-tse_tse_mac_transmit_startofpacket>),                     //                                      .startofpacket
		.tse_tse_mac_transmit_valid                             (<connected-to-tse_tse_mac_transmit_valid>)                              //                                      .valid
	);

