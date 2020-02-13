# TCL File Generated by Component Editor 12.0
# Mon Jul 16 09:24:51 CDT 2012
# DO NOT MODIFY


# 
# i2c_opencores_yair "I2C Master (opencores.org)" v12.0
#  2012.07.16.09:24:51
# I2C Master Peripheral from opencores.org
# 

# 
# request TCL package from ACDS 12.0
# 
package require -exact qsys 12.0


# 
# module i2c_opencores_yair
# 
set_module_property DESCRIPTION "I2C Master Peripheral from opencores.org Modified by Yair"
set_module_property NAME i2c_opencores_yair
set_module_property VERSION 12.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Interface Protocols/Serial"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "I2C Master Yair (opencores.org)"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL i2c_opencores_yair
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file i2c_opencores_yair.v VERILOG PATH i2c_opencores_yair.v
add_fileset_file i2c_master_yair_top.v VERILOG PATH i2c_master_yair_top.v
add_fileset_file i2c_master_yair_defines.v VERILOG PATH i2c_master_yair_defines.v
add_fileset_file i2c_master_yair_byte_ctrl.v VERILOG PATH i2c_master_yair_byte_ctrl.v
add_fileset_file i2c_master_yair_bit_ctrl.v VERILOG PATH i2c_master_yair_bit_ctrl.v

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog TOP_LEVEL i2c_opencores_yair
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file i2c_opencores_yair.v VERILOG PATH i2c_opencores_yair.v
add_fileset_file i2c_master_yair_top.v VERILOG PATH i2c_master_yair_top.v
add_fileset_file i2c_master_yair_defines.v VERILOG PATH i2c_master_yair_defines.v
add_fileset_file i2c_master_yair_byte_ctrl.v VERILOG PATH i2c_master_yair_byte_ctrl.v
add_fileset_file i2c_master_yair_bit_ctrl.v VERILOG PATH i2c_master_yair_bit_ctrl.v
add_fileset_file timescale.v VERILOG PATH timescale.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true

add_interface_port clock wb_clk_i clk Input 1


# 
# connection point clock_reset
# 
add_interface clock_reset reset end
set_interface_property clock_reset associatedClock clock
set_interface_property clock_reset synchronousEdges DEASSERT
set_interface_property clock_reset ENABLED true

add_interface_port clock_reset wb_rst_i reset Input 1


# 
# connection point export
# 
add_interface export conduit end
set_interface_property export associatedClock ""
set_interface_property export associatedReset ""
set_interface_property export ENABLED true

add_interface_port export scl_pad_io export Bidir 1
add_interface_port export sda_pad_io export Bidir 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressAlignment NATIVE
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset clock_reset
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 isMemoryDevice false
set_interface_property avalon_slave_0 isNonVolatileStorage false
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 printableDevice false
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 wb_adr_i address Input 3
add_interface_port avalon_slave_0 wb_dat_i writedata Input 8
add_interface_port avalon_slave_0 wb_dat_o readdata Output 8
add_interface_port avalon_slave_0 wb_we_i write Input 1
add_interface_port avalon_slave_0 wb_stb_i chipselect Input 1
add_interface_port avalon_slave_0 wb_ack_o waitrequest_n Output 1


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint avalon_slave_0
set_interface_property interrupt_sender associatedClock clock
set_interface_property interrupt_sender associatedReset clock_reset
set_interface_property interrupt_sender ENABLED true

add_interface_port interrupt_sender wb_inta_o irq Output 1

