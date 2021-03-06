# TCL File Generated by Component Editor 14.1
# Mon Nov 23 17:42:29 PST 2015
# DO NOT MODIFY


# 
# opencores_spi "opencores_spi" v1.0
#  2015.11.23.17:42:29
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module opencores_spi
# 
set_module_property DESCRIPTION ""
set_module_property NAME opencores_spi
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME opencores_spi
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 

add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL opencores_spi_top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file opencores_spi_top.v VERILOG PATH opencores_spi_top.v TOP_LEVEL_FILE
add_fileset_file opencores_spi_timescale.v VERILOG PATH opencores_spi_timescale.v TOP_LEVEL_FILE
add_fileset_file opencores_spi_clgen.v VERILOG PATH opencores_spi_clgen.v TOP_LEVEL_FILE
add_fileset_file opencores_spi_shift.v VERILOG PATH opencores_spi_shift.v TOP_LEVEL_FILE
add_fileset_file opencores_spi_defines.v VERILOG PATH opencores_spi_defines.v TOP_LEVEL_FILE




# 
# parameters
# 
add_parameter Tp INTEGER 1
set_parameter_property Tp DEFAULT_VALUE 1
set_parameter_property Tp DISPLAY_NAME Tp
set_parameter_property Tp TYPE INTEGER
set_parameter_property Tp UNITS None
set_parameter_property Tp ALLOWED_RANGES -2147483648:2147483647
set_parameter_property Tp HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits SYMBOLS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits SYMBOLS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 wb_adr_i address Input 5
add_interface_port avalon_slave_0 wb_dat_i writedata Input 32
add_interface_port avalon_slave_0 wb_dat_o readdata Output 32
add_interface_port avalon_slave_0 wb_sel_i byteenable Input 4
add_interface_port avalon_slave_0 wb_we_i write Input 1
add_interface_port avalon_slave_0 wb_stb_i chipselect Input 1
add_interface_port avalon_slave_0 wb_ack_o waitrequest_n Output 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink wb_clk_i clk Input 1


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

add_interface_port reset_sink wb_rst_i reset Input 1


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

add_interface_port conduit_end miso_pad_i export Input 1
add_interface_port conduit_end mosi_pad_o export Output 1
add_interface_port conduit_end sclk_pad_o export Output 1
add_interface_port conduit_end ss_pad_o export Output 8
add_interface_port conduit_end tx_bit_pos export Output 8
add_interface_port conduit_end rx_bit_pos export Output 8
add_interface_port conduit_end cnt         export Output 8
add_interface_port conduit_end wb_err_o export Output 1
add_interface_port conduit_end wb_cyc_i export Input 1


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint avalon_slave_0
set_interface_property interrupt_sender associatedClock clock_sink
set_interface_property interrupt_sender associatedReset reset_sink
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender wb_int_o irq Output 1


# 
# connection point debug
# 
add_interface debug conduit end
set_interface_property debug associatedClock clock_sink
set_interface_property debug associatedReset reset_sink
set_interface_property debug ENABLED true
set_interface_property debug EXPORT_OF ""
set_interface_property debug PORT_NAME_MAP ""
set_interface_property debug SVD_ADDRESS_GROUP ""

add_interface_port debug debug_wb_clk_i export Output 1
add_interface_port debug debug_wb_rst_i export Output 1
add_interface_port debug debug_wb_adr_i export Output 5
add_interface_port debug debug_wb_dat_i export Output 32
add_interface_port debug debug_wb_dat_o export Output 32
add_interface_port debug debug_wb_sel_i export Output 4
add_interface_port debug debug_wb_we_i export Output 1
add_interface_port debug debug_wb_stb_i export Output 1
add_interface_port debug debug_wb_cyc_i export Output 1
add_interface_port debug debug_wb_ack_o export Output 1
add_interface_port debug debug_wb_err_o export Output 1
add_interface_port debug debug_wb_int_o export Output 1
add_interface_port debug debug_divider export Output 16
add_interface_port debug debug_ctrl export Output 14
add_interface_port debug debug_ss export Output 8
add_interface_port debug debug_wb_dat export Output 32
add_interface_port debug debug_tag_word_in export Input 8
add_interface_port debug debug_tag_word_out export Output 8

