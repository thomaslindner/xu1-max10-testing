# TCL File Generated by Component Editor 13.0
# Wed Aug 14 22:58:20 CDT 2013
# DO NOT MODIFY


# 
# jesd_top_qsys "jesd_top_qsys" v1.0
#  2013.08.14.22:58:20
# 
# 

# 
# request TCL package from ACDS 13.0
# 
package require -exact qsys 13.0


# 
# module jesd_top_qsys
# 
set_module_property DESCRIPTION ""
set_module_property NAME jesd_top_qsys
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME jesd_top_qsys
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL jesd_top_qsys
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file jesd_top_cfg.v VERILOG PATH MTI/jesd_top_cfg.v
add_fileset_file jesdcon_pkg.v VERILOG PATH MTI/jesdcon_pkg.v
add_fileset_file data_sync.v VERILOG PATH MTI/data_sync.v
add_fileset_file jesd_clk_rst_gen.v VERILOG PATH MTI/jesd_clk_rst_gen.v
#add_fileset_file jesd_dec_pcs.v VERILOG PATH ..src/jesd_dec_pcs.v
add_fileset_file jesd_dec_xcvr.v VERILOG PATH MTI/jesd_dec_xcvr.v
add_fileset_file jesd_enc_xcvr.v VERILOG PATH MTI/jesd_enc_xcvr.v

add_fileset_file jesd_rx_top.v VERILOG PATH MTI/jesd_rx_top.v
add_fileset_file jesd_top.v VERILOG PATH MTI/jesd_top.v
add_fileset_file jesd_top_qsys.sv SYSTEM_VERILOG PATH jesd_top_qsys.sv TOP_LEVEL_FILE
add_fileset_file jesd_tx_top.v VERILOG PATH MTI/jesd_tx_top.v
add_fileset_file reset_sync.v VERILOG PATH MTI/reset_sync.v



#add_fileset_file jesd_asyn_fifo_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_asyn_fifo_enc.vhd
#add_fileset_file jesd_demapper_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_demapper_enc.vhd
add_fileset_file jesd_descrambler_16_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_descrambler_16_enc.vhd
add_fileset_file jesd_descrambler_32_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_descrambler_32_enc.vhd
add_fileset_file jesd_k28_pkg_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_k28_pkg_enc.vhd
add_fileset_file jesd_rx_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_rx_enc.vhd
add_fileset_file jesd_rx.ocp OTHER PATH MTI/jesd204b/src/jesd_rx.ocp
add_fileset_file jesd_rx_cpuif_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_rx_cpuif_enc.vhd
#add_fileset_file jesd_rx_top_x.vhd VHDL PATH MTI/jesd204b/src_top/jesd_rx_top_x.vhd
add_fileset_file jesd_rx_cpuif_pkg.vhd VHDL PATH MTI/jesd204b/src/jesd_rx_cpuif_pkg.vhd
add_fileset_file jesd_rx_demapper_datapath_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_rx_demapper_datapath_enc.vhd
add_fileset_file jesd_rx_phy_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_rx_phy_enc.vhd
add_fileset_file jesd_rx_buf_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_rx_buf_enc.vhd
add_fileset_file jesd_scrambler_16_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_scrambler_16_enc.vhd
add_fileset_file jesd_scrambler_32_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_scrambler_32_enc.vhd
add_fileset_file jesd_tailbit_generator_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tailbit_generator_enc.vhd
add_fileset_file jesd_tx_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_enc.vhd
#add_fileset_file jesd_tx_top_x.vhd VHDL PATH MTI/jesd204b/src_top/jesd_tx_top_x.vhd
add_fileset_file jesd_tx.ocp OTHER PATH MTI/jesd204b/src/jesd_tx.ocp
add_fileset_file jesd_tx_cpuif_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_cpuif_enc.vhd
add_fileset_file jesd_tx_cpuif_pkg.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_cpuif_pkg.vhd
add_fileset_file jesd_tx_buf_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_buf_enc.vhd
add_fileset_file jesd_tx_mapper_datapath_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_mapper_datapath_enc.vhd
add_fileset_file jesd_tx_phy_enc.vhd VHDL_ENCRYPT PATH MTI/jesd204b/src/jesd_tx_phy_enc.vhd
add_fileset_file buf_ctrl_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/buf_ctrl_enc.vhd
add_fileset_file clock_sync_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/clock_sync_enc.vhd
add_fileset_file comma_align_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/comma_align_enc.vhd
add_fileset_file cpu_clock_sync_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/cpu_clock_sync_enc.vhd
add_fileset_file dec_8b10b_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/dec_8b10b_enc.vhd
add_fileset_file delay_element_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/delay_element_enc.vhd
add_fileset_file enc_8b10b_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/enc_8b10b_enc.vhd
add_fileset_file eth_crc_pck_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/eth_crc_pck_enc.vhd
add_fileset_file freq_lock_check_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/freq_lock_check_enc.vhd
add_fileset_file gray_pck_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/gray_pck_enc.vhd
add_fileset_file ieee_ext.vhd VHDL PATH MTI/shared/src_shared/ieee_ext.vhd
add_fileset_file loop_buf_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/loop_buf_enc.vhd
add_fileset_file pck_4b5b_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/pck_4b5b_enc.vhd
add_fileset_file prbs_pck_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/prbs_pck_enc.vhd
add_fileset_file sync_bit_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_bit_enc.vhd
add_fileset_file sync_bit_enable_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_bit_enable_enc.vhd
add_fileset_file sync_event_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_event_enc.vhd
add_fileset_file sync_event_with_feedback_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_event_with_feedback_enc.vhd
add_fileset_file sync_vector_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_vector_enc.vhd
add_fileset_file sync_vector_enable_enc.vhd VHDL_ENCRYPT PATH MTI/shared/src_shared/sync_vector_enable_enc.vhd
add_fileset_file buf_ram.vhd VHDL PATH MTI/shared/src_generic/buf_ram.vhd
add_fileset_file dp_ram.vhd VHDL PATH MTI/shared/src_generic/dp_ram.vhd
add_fileset_file sp_ram.vhd VHDL PATH MTI/shared/src_generic/sp_ram.vhd

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog TOP_LEVEL jesd_top_qsys
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false



# 
# parameters
# 
add_parameter SAMPLES_PER_CLK INTEGER 4
set_parameter_property SAMPLES_PER_CLK DEFAULT_VALUE 4
set_parameter_property SAMPLES_PER_CLK DISPLAY_NAME SAMPLES_PER_CLK
set_parameter_property SAMPLES_PER_CLK TYPE INTEGER
set_parameter_property SAMPLES_PER_CLK UNITS None
set_parameter_property SAMPLES_PER_CLK ALLOWED_RANGES 1:4
set_parameter_property SAMPLES_PER_CLK HDL_PARAMETER true
add_parameter gControllerType STRING DAC_ADC
set_parameter_property gControllerType DEFAULT_VALUE DAC_ADC
set_parameter_property gControllerType DISPLAY_NAME gControllerType
set_parameter_property gControllerType TYPE STRING
set_parameter_property gControllerType UNITS None
set_parameter_property gControllerType HDL_PARAMETER true
add_parameter device STRING AV
set_parameter_property device DEFAULT_VALUE AV
set_parameter_property device DISPLAY_NAME device
set_parameter_property device TYPE STRING
set_parameter_property device UNITS None
set_parameter_property device HDL_PARAMETER true
add_parameter SYSREF_DIR STRING TO_FPGA
set_parameter_property SYSREF_DIR DEFAULT_VALUE TO_FPGA
set_parameter_property SYSREF_DIR DISPLAY_NAME SYSREF_DIR
set_parameter_property SYSREF_DIR TYPE STRING
set_parameter_property SYSREF_DIR UNITS None
set_parameter_property SYSREF_DIR HDL_PARAMETER true
add_parameter F INTEGER 1
set_parameter_property F DEFAULT_VALUE 1
set_parameter_property F DISPLAY_NAME F
set_parameter_property F TYPE INTEGER
set_parameter_property F UNITS None
set_parameter_property F ALLOWED_RANGES -2147483648:2147483647
set_parameter_property F HDL_PARAMETER true
add_parameter K INTEGER 16
set_parameter_property K DEFAULT_VALUE 16
set_parameter_property K DISPLAY_NAME K
set_parameter_property K TYPE INTEGER
set_parameter_property K UNITS None
set_parameter_property K ALLOWED_RANGES -2147483648:2147483647
set_parameter_property K HDL_PARAMETER true
add_parameter M INTEGER 2
set_parameter_property M DEFAULT_VALUE 2
set_parameter_property M DISPLAY_NAME M
set_parameter_property M TYPE INTEGER
set_parameter_property M UNITS None
set_parameter_property M ALLOWED_RANGES -2147483648:2147483647
set_parameter_property M HDL_PARAMETER true
add_parameter L INTEGER 1
set_parameter_property L DEFAULT_VALUE 1
set_parameter_property L DISPLAY_NAME L
set_parameter_property L TYPE INTEGER
set_parameter_property L UNITS None
set_parameter_property L ALLOWED_RANGES -2147483648:2147483647
set_parameter_property L HDL_PARAMETER true
add_parameter N INTEGER 12
set_parameter_property N DEFAULT_VALUE 12
set_parameter_property N DISPLAY_NAME N
set_parameter_property N TYPE INTEGER
set_parameter_property N UNITS None
set_parameter_property N ALLOWED_RANGES -2147483648:2147483647
set_parameter_property N HDL_PARAMETER true
add_parameter CS INTEGER 2
set_parameter_property CS DEFAULT_VALUE 2
set_parameter_property CS DISPLAY_NAME CS
set_parameter_property CS TYPE INTEGER
set_parameter_property CS UNITS None
set_parameter_property CS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CS HDL_PARAMETER true
add_parameter S INTEGER 1
set_parameter_property S DEFAULT_VALUE 1
set_parameter_property S DISPLAY_NAME S
set_parameter_property S TYPE INTEGER
set_parameter_property S UNITS None
set_parameter_property S ALLOWED_RANGES -2147483648:2147483647
set_parameter_property S HDL_PARAMETER true
add_parameter DID INTEGER 0
set_parameter_property DID DEFAULT_VALUE 0
set_parameter_property DID DISPLAY_NAME DID
set_parameter_property DID TYPE INTEGER
set_parameter_property DID UNITS None
set_parameter_property DID ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DID HDL_PARAMETER true
add_parameter BID INTEGER 0
set_parameter_property BID DEFAULT_VALUE 0
set_parameter_property BID DISPLAY_NAME BID
set_parameter_property BID TYPE INTEGER
set_parameter_property BID UNITS None
set_parameter_property BID ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BID HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink jesd_device_clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rstn reset_n Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end jesd_tx_syncn export Input 1
add_interface_port conduit_end jesd_rx_syncn export Output 1
add_interface_port conduit_end jesd_tx_data_out export Output L
add_interface_port conduit_end jesd_rx_data_in export Input L
add_interface_port conduit_end jesd_sysref_in export Input 1
add_interface_port conduit_end jesd_tx_sysref_out export Output 1
add_interface_port conduit_end jesd_rx_sysref_out export Output 1


# 
# connection point tx_clk
# 
add_interface tx_clk clock start
set_interface_property tx_clk associatedDirectClock clock_sink
set_interface_property tx_clk clockRate 312500000
set_interface_property tx_clk clockRateKnown false
set_interface_property tx_clk ENABLED true
set_interface_property tx_clk EXPORT_OF ""
set_interface_property tx_clk PORT_NAME_MAP ""
set_interface_property tx_clk SVD_ADDRESS_GROUP ""

add_interface_port tx_clk jesd_tx_frame_clk clk Output 1

# 
# connection point tx_clk_div2
# 
add_interface tx_clk_div2 clock start
set_interface_property tx_clk_div2 associatedDirectClock clock_sink
set_interface_property tx_clk_div2 clockRate 156250000
set_interface_property tx_clk_div2 clockRateKnown false
set_interface_property tx_clk_div2 ENABLED true
set_interface_property tx_clk_div2 EXPORT_OF ""
set_interface_property tx_clk_div2 PORT_NAME_MAP ""
set_interface_property tx_clk_div2 SVD_ADDRESS_GROUP ""

add_interface_port tx_clk_div2 jesd_tx_frame_clk_div2 clk Output 1




# 
# connection point tx_rstn
# 
add_interface tx_rstn reset start
set_interface_property tx_rstn associatedClock tx_clk
set_interface_property tx_rstn associatedDirectReset ""
set_interface_property tx_rstn associatedResetSinks ""
set_interface_property tx_rstn synchronousEdges DEASSERT
set_interface_property tx_rstn ENABLED true
set_interface_property tx_rstn EXPORT_OF ""
set_interface_property tx_rstn PORT_NAME_MAP ""
set_interface_property tx_rstn SVD_ADDRESS_GROUP ""

add_interface_port tx_rstn jesd_tx_frame_rstn reset_n Output 1


# 
# connection point rx_clk
# 
add_interface rx_clk clock start
set_interface_property rx_clk associatedDirectClock clock_sink
set_interface_property rx_clk clockRate 250000000
set_interface_property rx_clk clockRateKnown false
set_interface_property rx_clk ENABLED true
set_interface_property rx_clk EXPORT_OF ""
set_interface_property rx_clk PORT_NAME_MAP ""
set_interface_property rx_clk SVD_ADDRESS_GROUP ""

add_interface_port rx_clk jesd_rx_frame_clk clk Output 1


# 
# connection point rx_clk_div2
# 
add_interface rx_clk_div2 clock start
set_interface_property rx_clk_div2 associatedDirectClock clock_sink
set_interface_property rx_clk_div2 clockRate 125000000
set_interface_property rx_clk_div2 clockRateKnown false
set_interface_property rx_clk_div2 ENABLED true
set_interface_property rx_clk_div2 EXPORT_OF ""
set_interface_property rx_clk_div2 PORT_NAME_MAP ""
set_interface_property rx_clk_div2 SVD_ADDRESS_GROUP ""

add_interface_port rx_clk_div2 jesd_rx_frame_clk_div2 clk Output 1



# 
# connection point rx_rstn
# 
add_interface rx_rstn reset start
set_interface_property rx_rstn associatedClock rx_clk
set_interface_property rx_rstn associatedDirectReset ""
set_interface_property rx_rstn associatedResetSinks ""
set_interface_property rx_rstn synchronousEdges DEASSERT
set_interface_property rx_rstn ENABLED true
set_interface_property rx_rstn EXPORT_OF ""
set_interface_property rx_rstn PORT_NAME_MAP ""
set_interface_property rx_rstn SVD_ADDRESS_GROUP ""

add_interface_port rx_rstn jesd_rx_frame_rstn reset_n Output 1


# 
# connection point avalon_slave_tx
# 
add_interface avalon_slave_tx avalon end
set_interface_property avalon_slave_tx addressUnits WORDS
set_interface_property avalon_slave_tx associatedClock reconfig_clk
set_interface_property avalon_slave_tx associatedReset econfig_rst
set_interface_property avalon_slave_tx bitsPerSymbol 8
set_interface_property avalon_slave_tx burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_tx burstcountUnits WORDS
set_interface_property avalon_slave_tx explicitAddressSpan 0
set_interface_property avalon_slave_tx holdTime 0
set_interface_property avalon_slave_tx linewrapBursts false
set_interface_property avalon_slave_tx maximumPendingReadTransactions 1
set_interface_property avalon_slave_tx readLatency 0
set_interface_property avalon_slave_tx readWaitTime 1
set_interface_property avalon_slave_tx setupTime 0
set_interface_property avalon_slave_tx timingUnits Cycles
set_interface_property avalon_slave_tx writeWaitTime 0
set_interface_property avalon_slave_tx ENABLED true
set_interface_property avalon_slave_tx EXPORT_OF ""
set_interface_property avalon_slave_tx PORT_NAME_MAP ""
set_interface_property avalon_slave_tx SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_tx avmm_tx_addr address Input 16
add_interface_port avalon_slave_tx avmm_tx_wr_data writedata Input 32
add_interface_port avalon_slave_tx avmm_tx_rd_data readdata Output 32
add_interface_port avalon_slave_tx avmm_tx_rd_valid readdatavalid Output 1
add_interface_port avalon_slave_tx avmm_tx_waitreq waitrequest Output 1
add_interface_port avalon_slave_tx avmm_tx_read read Input 1
add_interface_port avalon_slave_tx avmm_tx_write write Input 1
set_interface_assignment avalon_slave_tx embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_tx embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_tx embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_tx embeddedsw.configuration.isPrintableDevice 0


# 
# connection point avalon_streaming_source_rx
# 
add_interface avalon_streaming_source_rx avalon_streaming start
set_interface_property avalon_streaming_source_rx associatedClock rx_clk
set_interface_property avalon_streaming_source_rx associatedReset rx_rstn
set_interface_property avalon_streaming_source_rx dataBitsPerSymbol 8
set_interface_property avalon_streaming_source_rx errorDescriptor ""
set_interface_property avalon_streaming_source_rx firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source_rx maxChannel 0
set_interface_property avalon_streaming_source_rx readyLatency 0
set_interface_property avalon_streaming_source_rx ENABLED true
set_interface_property avalon_streaming_source_rx EXPORT_OF ""
set_interface_property avalon_streaming_source_rx PORT_NAME_MAP ""
set_interface_property avalon_streaming_source_rx SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_source_rx avst_rx_data_out data Output M*SAMPLES_PER_CLK*S*16
add_interface_port avalon_streaming_source_rx avst_rx_data_valid valid Output 1
add_interface_port avalon_streaming_source_rx avst_rx_data_rdy ready Input 1


# 
# connection point avalon_streaming_sink_tx
# 
add_interface avalon_streaming_sink_tx avalon_streaming end
set_interface_property avalon_streaming_sink_tx associatedClock tx_clk
set_interface_property avalon_streaming_sink_tx associatedReset tx_rstn
set_interface_property avalon_streaming_sink_tx dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink_tx errorDescriptor ""
set_interface_property avalon_streaming_sink_tx firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink_tx maxChannel 0
set_interface_property avalon_streaming_sink_tx readyLatency 0
set_interface_property avalon_streaming_sink_tx ENABLED true
set_interface_property avalon_streaming_sink_tx EXPORT_OF ""
set_interface_property avalon_streaming_sink_tx PORT_NAME_MAP ""
set_interface_property avalon_streaming_sink_tx SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_sink_tx avst_tx_data_in data Input M*SAMPLES_PER_CLK*S*16
add_interface_port avalon_streaming_sink_tx avst_tx_data_valid valid Input 1
add_interface_port avalon_streaming_sink_tx avst_tx_data_rdy ready Output 1


# 
# connection point avalon_slave_rx
# 
add_interface avalon_slave_rx avalon end
set_interface_property avalon_slave_rx addressUnits WORDS
set_interface_property avalon_slave_rx associatedClock reconfig_clk
set_interface_property avalon_slave_rx associatedReset econfig_rst
set_interface_property avalon_slave_rx bitsPerSymbol 8
set_interface_property avalon_slave_rx burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_rx burstcountUnits WORDS
set_interface_property avalon_slave_rx explicitAddressSpan 0
set_interface_property avalon_slave_rx holdTime 0
set_interface_property avalon_slave_rx linewrapBursts false
set_interface_property avalon_slave_rx maximumPendingReadTransactions 1
set_interface_property avalon_slave_rx readLatency 0
set_interface_property avalon_slave_rx readWaitTime 1
set_interface_property avalon_slave_rx setupTime 0
set_interface_property avalon_slave_rx timingUnits Cycles
set_interface_property avalon_slave_rx writeWaitTime 0
set_interface_property avalon_slave_rx ENABLED true
set_interface_property avalon_slave_rx EXPORT_OF ""
set_interface_property avalon_slave_rx PORT_NAME_MAP ""
set_interface_property avalon_slave_rx SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_rx avmm_rx_addr address Input 16
add_interface_port avalon_slave_rx avmm_rx_read read Input 1
add_interface_port avalon_slave_rx avmm_rx_write write Input 1
add_interface_port avalon_slave_rx avmm_rx_wr_data writedata Input 32
add_interface_port avalon_slave_rx avmm_rx_rd_data readdata Output 32
add_interface_port avalon_slave_rx avmm_rx_rd_valid readdatavalid Output 1
add_interface_port avalon_slave_rx avmm_rx_waitreq waitrequest Output 1
set_interface_assignment avalon_slave_rx embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_rx embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_rx embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_rx embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reconfig_clk
# 
add_interface reconfig_clk clock end
set_interface_property reconfig_clk clockRate 0
set_interface_property reconfig_clk ENABLED true
set_interface_property reconfig_clk EXPORT_OF ""
set_interface_property reconfig_clk PORT_NAME_MAP ""
set_interface_property reconfig_clk SVD_ADDRESS_GROUP ""

add_interface_port reconfig_clk jesd_reconfig_clk clk Input 1


# 
# connection point clkout
# 
add_interface clkout clock start
set_interface_property clkout associatedDirectClock clkout
set_interface_property clkout clockRate 250000000
set_interface_property clkout clockRateKnown false
set_interface_property clkout ENABLED true
set_interface_property clkout EXPORT_OF ""
set_interface_property clkout PORT_NAME_MAP ""
set_interface_property clkout SVD_ADDRESS_GROUP ""

add_interface_port clkout jesd_clkout clk Output 1


# 
# connection point econfig_rst
# 
add_interface econfig_rst reset end
set_interface_property econfig_rst associatedClock reconfig_clk
set_interface_property econfig_rst synchronousEdges DEASSERT
set_interface_property econfig_rst ENABLED true
set_interface_property econfig_rst EXPORT_OF ""
set_interface_property econfig_rst PORT_NAME_MAP ""
set_interface_property econfig_rst SVD_ADDRESS_GROUP ""

add_interface_port econfig_rst jesd_reconfig_rst reset Input 1


# 
# connection point clkout_rstn
# 
add_interface clkout_rstn reset start
set_interface_property clkout_rstn associatedClock clkout
set_interface_property clkout_rstn associatedDirectReset ""
set_interface_property clkout_rstn associatedResetSinks ""
set_interface_property clkout_rstn synchronousEdges DEASSERT
set_interface_property clkout_rstn ENABLED true
set_interface_property clkout_rstn EXPORT_OF ""
set_interface_property clkout_rstn PORT_NAME_MAP ""
set_interface_property clkout_rstn SVD_ADDRESS_GROUP ""

add_interface_port clkout_rstn jesd_clkout_rstn reset_n Output 1


# 
# connection point avalon_slave_reconfig
# 
add_interface avalon_slave_reconfig avalon end
set_interface_property avalon_slave_reconfig addressUnits WORDS
set_interface_property avalon_slave_reconfig associatedClock reconfig_clk
set_interface_property avalon_slave_reconfig associatedReset econfig_rst
set_interface_property avalon_slave_reconfig bitsPerSymbol 8
set_interface_property avalon_slave_reconfig burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_reconfig burstcountUnits WORDS
set_interface_property avalon_slave_reconfig explicitAddressSpan 0
set_interface_property avalon_slave_reconfig holdTime 0
set_interface_property avalon_slave_reconfig linewrapBursts false
set_interface_property avalon_slave_reconfig maximumPendingReadTransactions 0
set_interface_property avalon_slave_reconfig readLatency 0
set_interface_property avalon_slave_reconfig readWaitTime 1
set_interface_property avalon_slave_reconfig setupTime 0
set_interface_property avalon_slave_reconfig timingUnits Cycles
set_interface_property avalon_slave_reconfig writeWaitTime 0
set_interface_property avalon_slave_reconfig ENABLED true
set_interface_property avalon_slave_reconfig EXPORT_OF ""
set_interface_property avalon_slave_reconfig PORT_NAME_MAP ""
set_interface_property avalon_slave_reconfig SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_reconfig avmm_reconfig_addr address Input 8
add_interface_port avalon_slave_reconfig avmm_reconfig_read read Input 1
add_interface_port avalon_slave_reconfig avmm_reconfig_write write Input 1
add_interface_port avalon_slave_reconfig avmm_reconfig_wr_data writedata Input 32
add_interface_port avalon_slave_reconfig avmm_reconfig_rd_data readdata Output 32
add_interface_port avalon_slave_reconfig avmm_reconfig_waitreq waitrequest Output 1
set_interface_assignment avalon_slave_reconfig embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_reconfig embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_reconfig embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_reconfig embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reconfig_from_pll
# 
add_interface reconfig_from_pll conduit end
set_interface_property reconfig_from_pll associatedClock ""
set_interface_property reconfig_from_pll associatedReset ""
set_interface_property reconfig_from_pll ENABLED true
set_interface_property reconfig_from_pll EXPORT_OF ""
set_interface_property reconfig_from_pll PORT_NAME_MAP ""
set_interface_property reconfig_from_pll SVD_ADDRESS_GROUP ""

add_interface_port reconfig_from_pll reconfig_from_pll reconfig_from_pll Output 64


# 
# connection point reconfig_to_pll
# 
add_interface reconfig_to_pll conduit end
set_interface_property reconfig_to_pll associatedClock ""
set_interface_property reconfig_to_pll associatedReset ""
set_interface_property reconfig_to_pll ENABLED true
set_interface_property reconfig_to_pll EXPORT_OF ""
set_interface_property reconfig_to_pll PORT_NAME_MAP ""
set_interface_property reconfig_to_pll SVD_ADDRESS_GROUP ""

add_interface_port reconfig_to_pll reconfig_to_pll reconfig_to_pll Input 64


# 
# connection point reconfig_mif
# 
add_interface reconfig_mif avalon start
set_interface_property reconfig_mif addressUnits WORDS
set_interface_property reconfig_mif associatedClock reconfig_clk
set_interface_property reconfig_mif associatedReset econfig_rst
set_interface_property reconfig_mif bitsPerSymbol 8
set_interface_property reconfig_mif burstOnBurstBoundariesOnly false
set_interface_property reconfig_mif burstcountUnits WORDS
set_interface_property reconfig_mif doStreamReads false
set_interface_property reconfig_mif doStreamWrites false
set_interface_property reconfig_mif holdTime 0
set_interface_property reconfig_mif linewrapBursts false
set_interface_property reconfig_mif maximumPendingReadTransactions 0
set_interface_property reconfig_mif readLatency 0
set_interface_property reconfig_mif readWaitTime 1
set_interface_property reconfig_mif setupTime 0
set_interface_property reconfig_mif timingUnits Cycles
set_interface_property reconfig_mif writeWaitTime 0
set_interface_property reconfig_mif ENABLED true
set_interface_property reconfig_mif EXPORT_OF ""
set_interface_property reconfig_mif PORT_NAME_MAP ""
set_interface_property reconfig_mif SVD_ADDRESS_GROUP ""

add_interface_port reconfig_mif reconfig_mif_address address Output 32
add_interface_port reconfig_mif reconfig_mif_read read Output 1
add_interface_port reconfig_mif reconfig_mif_readdata readdata Input 16
add_interface_port reconfig_mif reconfig_mif_waitrequest waitrequest Input 1


# 
# connection point phy_reconfig_mgmt
# 
add_interface phy_reconfig_mgmt avalon end
set_interface_property phy_reconfig_mgmt addressUnits WORDS
set_interface_property phy_reconfig_mgmt associatedClock reconfig_clk
set_interface_property phy_reconfig_mgmt associatedReset econfig_rst
set_interface_property phy_reconfig_mgmt bitsPerSymbol 8
set_interface_property phy_reconfig_mgmt burstOnBurstBoundariesOnly false
set_interface_property phy_reconfig_mgmt burstcountUnits WORDS
set_interface_property phy_reconfig_mgmt explicitAddressSpan 0
set_interface_property phy_reconfig_mgmt holdTime 0
set_interface_property phy_reconfig_mgmt linewrapBursts false
set_interface_property phy_reconfig_mgmt maximumPendingReadTransactions 0
set_interface_property phy_reconfig_mgmt readLatency 0
set_interface_property phy_reconfig_mgmt readWaitTime 1
set_interface_property phy_reconfig_mgmt setupTime 0
set_interface_property phy_reconfig_mgmt timingUnits Cycles
set_interface_property phy_reconfig_mgmt writeWaitTime 0
set_interface_property phy_reconfig_mgmt ENABLED true
set_interface_property phy_reconfig_mgmt EXPORT_OF ""
set_interface_property phy_reconfig_mgmt PORT_NAME_MAP ""
set_interface_property phy_reconfig_mgmt SVD_ADDRESS_GROUP ""

add_interface_port phy_reconfig_mgmt mgmt_address address Input 9
add_interface_port phy_reconfig_mgmt mgmt_read read Input 1
add_interface_port phy_reconfig_mgmt mgmt_readdata readdata Output 32
add_interface_port phy_reconfig_mgmt mgmt_write write Input 1
add_interface_port phy_reconfig_mgmt mgmt_writedata writedata Input 32
add_interface_port phy_reconfig_mgmt mgmt_waitrequest waitrequest Output 1
set_interface_assignment phy_reconfig_mgmt embeddedsw.configuration.isFlash 0
set_interface_assignment phy_reconfig_mgmt embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment phy_reconfig_mgmt embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment phy_reconfig_mgmt embeddedsw.configuration.isPrintableDevice 0


# 
# connection point tx_ready
# 
add_interface tx_ready conduit start
set_interface_property tx_ready associatedClock ""
set_interface_property tx_ready associatedReset ""
set_interface_property tx_ready ENABLED true
set_interface_property tx_ready EXPORT_OF ""
set_interface_property tx_ready PORT_NAME_MAP ""
set_interface_property tx_ready SVD_ADDRESS_GROUP ""

add_interface_port tx_ready tx_ready tx_ready Output 1

# 
# connection point syncn_rx
# 
add_interface syncn_rx conduit start
set_interface_property syncn_rx associatedClock ""
set_interface_property syncn_rx associatedReset ""
set_interface_property syncn_rx ENABLED true
set_interface_property syncn_rx EXPORT_OF ""
set_interface_property syncn_rx PORT_NAME_MAP ""
set_interface_property syncn_rx SVD_ADDRESS_GROUP ""

add_interface_port syncn_rx syncn_rx syncn_rx Output 1

# 
# connection point syncn_tx
# 
add_interface syncn_tx conduit start
set_interface_property syncn_tx associatedClock ""
set_interface_property syncn_tx associatedReset ""
set_interface_property syncn_tx ENABLED true
set_interface_property syncn_tx EXPORT_OF ""
set_interface_property syncn_tx PORT_NAME_MAP ""
set_interface_property syncn_tx SVD_ADDRESS_GROUP ""

add_interface_port syncn_tx syncn_tx syncn_tx Output 1



# 
# connection point lmfc_pulse_rx
# 
add_interface lmfc_pulse_rx conduit start
set_interface_property lmfc_pulse_rx associatedClock ""
set_interface_property lmfc_pulse_rx associatedReset ""
set_interface_property lmfc_pulse_rx ENABLED true
set_interface_property lmfc_pulse_rx EXPORT_OF ""
set_interface_property lmfc_pulse_rx PORT_NAME_MAP ""
set_interface_property lmfc_pulse_rx SVD_ADDRESS_GROUP ""

add_interface_port lmfc_pulse_rx lmfc_pulse_rx lmfc_pulse_rx Output 1


# 
# connection point pattern_out
# 
add_interface pattern_out avalon_streaming start
set_interface_property pattern_out associatedClock rx_clk
set_interface_property pattern_out associatedReset rx_rstn
set_interface_property pattern_out dataBitsPerSymbol 10
set_interface_property pattern_out errorDescriptor ""
set_interface_property pattern_out firstSymbolInHighOrderBits true
set_interface_property pattern_out maxChannel 0
set_interface_property pattern_out readyLatency 0
set_interface_property pattern_out ENABLED true
set_interface_property pattern_out EXPORT_OF ""
set_interface_property pattern_out PORT_NAME_MAP ""
set_interface_property pattern_out SVD_ADDRESS_GROUP ""

add_interface_port pattern_out check_data_out data Output 40
add_interface_port pattern_out check_data_valid valid Output 1
add_interface_port pattern_out check_data_rdy ready Input 1


# 
# connection point pattern_in
# 
add_interface pattern_in avalon_streaming end
set_interface_property pattern_in associatedClock tx_clk
set_interface_property pattern_in associatedReset tx_rstn
set_interface_property pattern_in dataBitsPerSymbol 10
set_interface_property pattern_in errorDescriptor ""
set_interface_property pattern_in firstSymbolInHighOrderBits true
set_interface_property pattern_in maxChannel 0
set_interface_property pattern_in readyLatency 0
set_interface_property pattern_in ENABLED true
set_interface_property pattern_in EXPORT_OF ""
set_interface_property pattern_in PORT_NAME_MAP ""
set_interface_property pattern_in SVD_ADDRESS_GROUP ""

add_interface_port pattern_in gen_data_in data Input 40
add_interface_port pattern_in gen_data_valid valid Input 1
add_interface_port pattern_in gen_data_rdy ready Output 1



# 
# connection point ch0_7_from_xcvr
# 
add_interface ch0_7_from_xcvr conduit start
set_interface_property ch0_7_from_xcvr associatedClock ""
set_interface_property ch0_7_from_xcvr associatedReset ""
set_interface_property ch0_7_from_xcvr ENABLED true
set_interface_property ch0_7_from_xcvr EXPORT_OF ""
set_interface_property ch0_7_from_xcvr PORT_NAME_MAP ""
set_interface_property ch0_7_from_xcvr SVD_ADDRESS_GROUP ""

add_interface_port ch0_7_from_xcvr ch0_7_from_xcvr reconfig_from_xcvr Output 368

# 
# connection point ch0_7_to_xcvr
# 
add_interface ch0_7_to_xcvr conduit end
set_interface_property ch0_7_to_xcvr associatedClock ""
set_interface_property ch0_7_to_xcvr associatedReset ""
set_interface_property ch0_7_to_xcvr ENABLED true
set_interface_property ch0_7_to_xcvr EXPORT_OF ""
set_interface_property ch0_7_to_xcvr PORT_NAME_MAP ""
set_interface_property ch0_7_to_xcvr SVD_ADDRESS_GROUP ""

add_interface_port ch0_7_to_xcvr ch0_7_to_xcvr reconfig_to_xcvr Input 560


# 
# connection point ch8_23_from_xcvr
# 
add_interface ch8_23_from_xcvr conduit start
set_interface_property ch8_23_from_xcvr associatedClock ""
set_interface_property ch8_23_from_xcvr associatedReset ""
set_interface_property ch8_23_from_xcvr ENABLED true
set_interface_property ch8_23_from_xcvr EXPORT_OF ""
set_interface_property ch8_23_from_xcvr PORT_NAME_MAP ""
set_interface_property ch8_23_from_xcvr SVD_ADDRESS_GROUP ""

add_interface_port ch8_23_from_xcvr ch8_23_from_xcvr reconfig_from_xcvr Output 736

# 
# connection point ch8_23_to_xcvr
# 
add_interface ch8_23_to_xcvr conduit end
set_interface_property ch8_23_to_xcvr associatedClock ""
set_interface_property ch8_23_to_xcvr associatedReset ""
set_interface_property ch8_23_to_xcvr ENABLED true
set_interface_property ch8_23_to_xcvr EXPORT_OF ""
set_interface_property ch8_23_to_xcvr PORT_NAME_MAP ""
set_interface_property ch8_23_to_xcvr SVD_ADDRESS_GROUP ""

add_interface_port ch8_23_to_xcvr ch8_23_to_xcvr reconfig_to_xcvr Input 1120


# 
# connection point jesd_rx_M
# 
add_interface jesd_rx_M conduit start
set_interface_property jesd_rx_M associatedClock ""
set_interface_property jesd_rx_M associatedReset ""
set_interface_property jesd_rx_M ENABLED true
set_interface_property jesd_rx_M EXPORT_OF ""
set_interface_property jesd_rx_M PORT_NAME_MAP ""
set_interface_property jesd_rx_M SVD_ADDRESS_GROUP ""

add_interface_port jesd_rx_M jesd_rx_M jesd_rx_M Output 2

# 
# connection point jesd_tx_M
# 
add_interface jesd_tx_M conduit start
set_interface_property jesd_tx_M associatedClock ""
set_interface_property jesd_tx_M associatedReset ""
set_interface_property jesd_tx_M ENABLED true
set_interface_property jesd_tx_M EXPORT_OF ""
set_interface_property jesd_tx_M PORT_NAME_MAP ""
set_interface_property jesd_tx_M SVD_ADDRESS_GROUP ""

add_interface_port jesd_tx_M jesd_tx_M jesd_tx_M Output 2