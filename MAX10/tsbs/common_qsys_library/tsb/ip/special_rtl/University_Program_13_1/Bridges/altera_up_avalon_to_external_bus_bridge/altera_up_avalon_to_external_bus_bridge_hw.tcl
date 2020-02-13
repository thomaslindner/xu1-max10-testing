# +----------------------------------------------------------------------------+
# | License Agreement                                                          |
# |                                                                            |
# | Copyright (c) 1991-2014 Altera Corporation, San Jose, California, USA.     |
# | All rights reserved.                                                       |
# |                                                                            |
# | Any megafunction design, and related net list (encrypted or decrypted),    |
# |  support information, device programming or simulation file, and any other |
# |  associated documentation or information provided by Altera or a partner   |
# |  under Altera's Megafunction Partnership Program may be used only to       |
# |  program PLD devices (but not masked PLD devices) from Altera.  Any other  |
# |  use of such megafunction design, net list, support information, device    |
# |  programming or simulation file, or any other related documentation or     |
# |  information is prohibited for any other purpose, including, but not       |
# |  limited to modification, reverse engineering, de-compiling, or use with   |
# |  any other silicon devices, unless such use is explicitly licensed under   |
# |  a separate agreement with Altera or a megafunction partner.  Title to     |
# |  the intellectual property, including patents, copyrights, trademarks,     |
# |  trade secrets, or maskworks, embodied in any such megafunction design,    |
# |  net list, support information, device programming or simulation file, or  |
# |  any other related documentation or information provided by Altera or a    |
# |  megafunction partner, remains with Altera, the megafunction partner, or   |
# |  their respective licensors.  No other licenses, including any licenses    |
# |  needed under any third party's intellectual property, are provided herein.|
# |  Copying or modifying any file, or portion thereof, to which this notice   |
# |  is attached violates this copyright.                                      |
# |                                                                            |
# | THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    |
# | IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   |
# | FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    |
# | THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER |
# | LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING    |
# | FROM, OUT OF OR IN CONNECTION WITH THIS FILE OR THE USE OR OTHER DEALINGS  |
# | IN THIS FILE.                                                              |
# |                                                                            |
# | This agreement shall be governed in all respects by the laws of the State  |
# |  of California and by the laws of the United States of America.            |
# |                                                                            |
# +----------------------------------------------------------------------------+

# TCL File Generated by Altera University Program
# DO NOT MODIFY

source "../../lib/aup_version.tcl"
source "../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_to_external_bus_bridge
# | 
set_module_property DESCRIPTION "Avalon to External Bus Bridge"
set_module_property NAME altera_up_avalon_to_external_bus_bridge
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Bridges"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Avalon to External Bus Bridge"
set_module_property DATASHEET_URL "[pwd]/doc/Avalon_to_External_Bus_Bridge.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_to_external_bus_bridge.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_to_external_bus_bridge
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property HIDE_FROM_QUARTUS true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL false
set_module_property ELABORATION_CALLBACK elaborate
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file altera_up_avalon_to_external_bus_bridge.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# |
add_parameter addr_size integer 4
set_parameter_property addr_size DISPLAY_NAME "Address Range"
#set_parameter_property addr_size GROUP "Address Range"
set_parameter_property addr_size UNITS None
set_parameter_property addr_size AFFECTS_ELABORATION true
set_parameter_property addr_size AFFECTS_GENERATION true
set_parameter_property addr_size ALLOWED_RANGES {1024 512 256 128 64 32 16 8 4 2 1}
set_parameter_property addr_size VISIBLE true
set_parameter_property addr_size ENABLED true

add_parameter addr_size_multiplier string Kbytes
set_parameter_property addr_size_multiplier DISPLAY_NAME "Address Range Units"
#set_parameter_property addr_size_multiplier GROUP "Address Range"
set_parameter_property addr_size_multiplier UNITS None
set_parameter_property addr_size_multiplier AFFECTS_ELABORATION true
set_parameter_property addr_size_multiplier AFFECTS_GENERATION true
set_parameter_property addr_size_multiplier ALLOWED_RANGES {Mbytes Kbytes bytes}
set_parameter_property addr_size_multiplier VISIBLE true
set_parameter_property addr_size_multiplier ENABLED true

add_parameter data_size integer 16
set_parameter_property data_size DISPLAY_NAME "Data Width"
#set_parameter_property data_size GROUP "Data Width"
set_parameter_property data_size UNITS Bits
set_parameter_property data_size AFFECTS_ELABORATION true
set_parameter_property data_size AFFECTS_GENERATION true
set_parameter_property data_size ALLOWED_RANGES {128 64 32 16 8}
set_parameter_property data_size VISIBLE true
set_parameter_property data_size ENABLED true
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clk
# | 
add_interface clk clock end
set_interface_property clk enabled true

add_interface_port clk clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset enabled true
set_interface_property reset synchronousEdges DEASSERT

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave
# | 
add_interface avalon_slave avalon end 
set_interface_property avalon_slave addressAlignment DYNAMIC
set_interface_property avalon_slave associatedClock clk
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bridgesToMaster ""
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave isBigEndian  false
set_interface_property avalon_slave isFlash false
set_interface_property avalon_slave isMemoryDevice false
set_interface_property avalon_slave isNonVolatileStorage false
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave minimumUninterruptedRunLength 1
set_interface_property avalon_slave printableDevice false
set_interface_property avalon_slave readLatency 1
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits cycles
set_interface_property avalon_slave writeWaitTime 0
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave
# | 
add_interface interrupt interrupt sender  
set_interface_property interrupt associatedAddressablePoint avalon_slave
set_interface_property interrupt associatedClock clk
set_interface_property interrupt associatedReset reset

add_interface_port interrupt avalon_irq irq Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Elaboration function
# | 
proc elaborate {} {
	set addr_size [ get_parameter_value "addr_size" ]
	set addr_size_multiplier [ get_parameter_value "addr_size_multiplier" ]
	set data_size [ get_parameter_value "data_size" ]

	if { $addr_size_multiplier == "Mbytes" } {
		set addr_span [ expr $addr_size * 1048576 ]
	} elseif { $addr_size_multiplier == "Kbytes" } {
		set addr_span [ expr $addr_size * 1024 ]
	} else {
		set addr_span [ expr $addr_size * 1 ]
	}

	set addr_bits [ expr int (ceil (log ($addr_span / ($data_size / 8)) / (log (2)))) ]

	set addr_low  [ expr int (ceil (log ($data_size / 8) / (log (2)))) ]
	set byte_en_bits [ expr $data_size / 8 ]

	# +-----------------------------------
	# | connection point avalon_slave
	# | 
#	set_interface_property avalon_slave explicitAddressSpan $addr_span

	add_interface_port avalon_slave avalon_address address Input $addr_bits
	add_interface_port avalon_slave avalon_byteenable byteenable Input $byte_en_bits
	add_interface_port avalon_slave avalon_chipselect chipselect Input 1
	add_interface_port avalon_slave avalon_read read Input 1
	add_interface_port avalon_slave avalon_write write Input 1
	add_interface_port avalon_slave avalon_writedata writedata Input $data_size
	add_interface_port avalon_slave avalon_readdata readdata Output $data_size
	add_interface_port avalon_slave avalon_waitrequest waitrequest Output 1
	# | owN
	# +-----------------------------------

	# +-----------------------------------
	# | connection point external_interface
	# |
	add_interface external_interface conduit end 

	add_interface_port external_interface acknowledge export Input 1
	add_interface_port external_interface irq export Input 1
	add_interface_port external_interface address export Output [ expr $addr_bits + $addr_low ]
	add_interface_port external_interface bus_enable export Output 1
	add_interface_port external_interface byte_enable export Output $byte_en_bits
	add_interface_port external_interface rw export Output 1
	add_interface_port external_interface write_data export Output $data_size
	add_interface_port external_interface read_data export Input $data_size
	# | 
	# +-----------------------------------

}
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Avalon to External Bus Bridge"

	# get parameter values
	set addr_size [ get_parameter_value "addr_size" ]
	set addr_size_multiplier [ get_parameter_value "addr_size_multiplier" ]
	set data_size [ get_parameter_value "data_size" ]

	if { $addr_size_multiplier == "Mbytes" } {
		set addr_span [ expr $addr_size * 1048576 ]
	} elseif { $addr_size_multiplier == "Kbytes" } {
		set addr_span [ expr $addr_size * 1024 ]
	} else {
		set addr_span [ expr $addr_size * 1 ]
	}

	set aw	[ expr ((log ($addr_span / ($data_size / 8)) / (log (2))) - 1.0) ]
	set eab	[ expr ceil (log ($data_size / 8) / (log (2))) ]

	set ow	[ format "OW:%.0f"	[ expr $aw + $eab ] ]
	set aw	[ format "AW:%.0f"	$aw ]
	set eab	[ format "EAB:%.0f"	$eab ]

	set dw	[ format "DW:%d"		[ expr $data_size - 1 ] ]
	set bw	[ format "BW:%.0f"	[ expr ($data_size / 8) - 1 ] ]

	# set section values
	
	# set arguments
	set params "$aw;$eab;$ow;$dw;$bw"
	set sections ""

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_to_external_bus_bridge.v" "altera_up_avalon_to_external_bus_bridge" $dest_name $params $sections

	# generate top level template
	#alt_up_create_instantiation_template "$dest_dir$dest_name.inst.v" $dest_name "external_interface"
}
# | 
# +-----------------------------------

