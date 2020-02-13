# TCL File Generated by Component Editor 12.1sp1
# Thu Mar 07 11:22:07 PST 2013
# DO NOT MODIFY


# 
# dual_port_64K_ram "dual_port_64K_ram" v1.0
# null 2013.03.07.11:22:07
# Dual port RAM to be written by NIOS and read by HDL
# 

# 
# request TCL package from ACDS 12.1
# 
package require -exact qsys 12.1


# 
# module dual_port_64K_ram
# 
set_module_property DESCRIPTION "Dual port RAM to be written by NIOS and read by HDL"
set_module_property NAME dual_port_64K_ram
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Memories and Memory Controllers/On-Chip"
set_module_property DISPLAY_NAME dual_port_64K_ram
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL dual_port_64K_ram
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dual_port_64K_ram.v VERILOG PATH dual_port_64K_ram.v

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog TOP_LEVEL dual_port_64K_ram
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dual_port_64K_ram.v VERILOG PATH dual_port_64K_ram.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 8192
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 q_a readdata Output 32
add_interface_port avalon_slave_0 wren_a write Input 1
add_interface_port avalon_slave_0 data_a writedata Input 32
add_interface_port avalon_slave_0 address_a address Input 11
add_interface_port avalon_slave_0 rden_a read Input 1
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

add_interface_port clock_sink clock_a clk Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true

add_interface_port conduit_end clock_b export Input 1
add_interface_port conduit_end q_b export Output 32
add_interface_port conduit_end wren_b export Input 1
add_interface_port conduit_end data_b export Input 32
add_interface_port conduit_end address_b export Input 11
add_interface_port conduit_end rden_b export Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true

add_interface_port reset_sink reset reset Input 1
