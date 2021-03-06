# (C) 2001-2017 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel MegaCore Function License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.


# TCL File Generated by Component Editor 8.0
# Fri Feb 27 16:12:14 EST 2009
# DO NOT MODIFY

set aup_version 16.1



# +-----------------------------------
# | 
# | Altera_UP_Flash_Memory_IP_Core_Avalon_Interface "Altera_UP_Flash_Memory_IP_Core_Avalon_Interface" v1.0
# | null 20011.02.27.16:12:14
# | Flash Memory Interface Module
# | 
# +-----------------------------------


# +-----------------------------------
# | module Altera_UP_Flash_Memory_IP_Core_Avalon_Interface
# | 
set_module_property DESCRIPTION "Flash Memory Interface Module"
set_module_property NAME Altera_UP_Flash_Memory_IP_Core_Avalon_Interface
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Memory"
set_module_property DISPLAY_NAME "Altera UP Flash Memory IP Core"
set_module_property DATASHEET_URL "[pwd]/doc/Flash_Memory_IP_Core.pdf"
set_module_property LIBRARIES {ieee.std_logic_1164.all ieee.std_logic_arith.all ieee.std_logic_unsigned.all std.standard.all}
set_module_property TOP_LEVEL_HDL_FILE hdl/Altera_UP_Flash_Memory_IP_Core_Avalon_Interface.vhd
set_module_property TOP_LEVEL_HDL_MODULE Altera_UP_Flash_Memory_IP_Core_Avalon_Interface
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
#set_module_property ANALYZE_HDL false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file hdl/Altera_UP_Flash_Memory_IP_Core_Avalon_Interface.vhd {SYNTHESIS SIMULATION}
add_file hdl/Altera_UP_Flash_Memory_Controller.vhd {SYNTHESIS SIMULATION}
add_file hdl/Altera_UP_Flash_Memory_IP_Core_Standalone.vhd {SYNTHESIS SIMULATION}
add_file hdl/Altera_UP_Flash_Memory_User_Interface.vhd {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter FLASH_MEMORY_ADDRESS_WIDTH int 22
set_parameter_property FLASH_MEMORY_ADDRESS_WIDTH DISPLAY_NAME FLASH_MEMORY_ADDRESS_WIDTH
set_parameter_property FLASH_MEMORY_ADDRESS_WIDTH UNITS None
set_parameter_property FLASH_MEMORY_ADDRESS_WIDTH AFFECTS_PORT_WIDTHS true
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point flash_data
# | 
add_interface flash_data avalon end
set_interface_property flash_data holdTime 0
set_interface_property flash_data linewrapBursts false
set_interface_property flash_data minimumUninterruptedRunLength 1
set_interface_property flash_data bridgesToMaster ""
set_interface_property flash_data isMemoryDevice false
set_interface_property flash_data burstOnBurstBoundariesOnly false
set_interface_property flash_data addressSpan 4
set_interface_property flash_data timingUnits Cycles
set_interface_property flash_data setupTime 0
set_interface_property flash_data writeWaitTime 0
set_interface_property flash_data isNonVolatileStorage false
set_interface_property flash_data addressAlignment DYNAMIC
set_interface_property flash_data maximumPendingReadTransactions 0
set_interface_property flash_data readWaitTime 1
set_interface_property flash_data readLatency 0
set_interface_property flash_data printableDevice false
set_interface_property flash_data isMemoryDevice true
set_interface_property flash_data isFlash true

set_interface_property flash_data associatedClock clk
set_interface_property flash_data associatedReset reset

add_interface_port flash_data i_avalon_chip_select chipselect Input 1
add_interface_port flash_data i_avalon_write write Input 1
add_interface_port flash_data i_avalon_read read Input 1
add_interface_port flash_data i_avalon_address address Input -1
add_interface_port flash_data i_avalon_byteenable byteenable Input 4
add_interface_port flash_data i_avalon_writedata writedata Input 32
add_interface_port flash_data o_avalon_readdata readdata Output 32
add_interface_port flash_data o_avalon_waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clk
# | 
add_interface clk clock end
set_interface_property clk enabled true

add_interface_port clk i_clock clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset enabled true
set_interface_property reset synchronousEdges DEASSERT

add_interface_port reset i_reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit_end
# | 
add_interface conduit_end conduit end

add_interface_port conduit_end FL_ADDR export Output -1
add_interface_port conduit_end FL_CE_N export Output 1
add_interface_port conduit_end FL_OE_N export Output 1
add_interface_port conduit_end FL_WE_N export Output 1
add_interface_port conduit_end FL_RST_N export Output 1
add_interface_port conduit_end FL_DQ export Bidir -1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point flash_erase_control
# | 
add_interface flash_erase_control avalon end
set_interface_property flash_erase_control holdTime 0
set_interface_property flash_erase_control linewrapBursts false
set_interface_property flash_erase_control minimumUninterruptedRunLength 1
set_interface_property flash_erase_control bridgesToMaster ""
set_interface_property flash_erase_control isMemoryDevice false
set_interface_property flash_erase_control burstOnBurstBoundariesOnly false
set_interface_property flash_erase_control addressSpan 4
set_interface_property flash_erase_control timingUnits Cycles
set_interface_property flash_erase_control setupTime 0
set_interface_property flash_erase_control writeWaitTime 0
set_interface_property flash_erase_control isNonVolatileStorage false
set_interface_property flash_erase_control addressAlignment DYNAMIC
set_interface_property flash_erase_control maximumPendingReadTransactions 0
set_interface_property flash_erase_control readWaitTime 1
set_interface_property flash_erase_control readLatency 0
set_interface_property flash_erase_control printableDevice false

set_interface_property flash_erase_control associatedClock clk
set_interface_property flash_erase_control associatedReset reset

add_interface_port flash_erase_control i_avalon_erase_write write Input 1
add_interface_port flash_erase_control i_avalon_erase_read read Input 1
add_interface_port flash_erase_control i_avalon_erase_byteenable byteenable Input 4
add_interface_port flash_erase_control i_avalon_erase_writedata writedata Input 32
add_interface_port flash_erase_control i_avalon_erase_chip_select chipselect Input 1
add_interface_port flash_erase_control o_avalon_erase_readdata readdata Output 32
add_interface_port flash_erase_control o_avalon_erase_waitrequest waitrequest Output 1
# | 
# +-----------------------------------

## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" file://ip/altera/university_program/memory/altera_up_flash_memory/doc/Flash_Memory_IP_Core.pdf
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421698013408
