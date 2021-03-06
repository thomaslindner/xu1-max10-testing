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


# THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THIS FILE OR THE USE OR OTHER DEALINGS
# IN THIS FILE.

# TCL File Generated by Altera University Program
# DO NOT MODIFY

set aup_version 16.1

source "../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_usb
# | 
set_module_property DESCRIPTION "USB controller for the DE-Series boards"
set_module_property NAME altera_up_avalon_usb
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Generic IO"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "USB Controller"
set_module_property DATASHEET_URL "[pwd]/doc/USB.pdf"
#set_module_property TOP_LEVEL_HDL_FILE hdl/altera_up_avalon_usb.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_usb
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
#set_module_property ANALYZE_HDL false
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file hdl/altera_up_avalon_usb.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
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
# | connection point avalon_usb_slave
# | 
add_interface avalon_usb_slave avalon end 
set_interface_property avalon_usb_slave addressAlignment NATIVE
set_interface_property avalon_usb_slave associatedClock clk
set_interface_property avalon_usb_slave associatedReset reset
set_interface_property avalon_usb_slave bridgesToMaster ""
set_interface_property avalon_usb_slave burstOnBurstBoundariesOnly false
#set_interface_property avalon_usb_slave explicitAddressSpan 4
set_interface_property avalon_usb_slave holdTime 100
set_interface_property avalon_usb_slave isBigEndian  false
set_interface_property avalon_usb_slave isFlash false
set_interface_property avalon_usb_slave isMemoryDevice false
set_interface_property avalon_usb_slave isNonVolatileStorage false
set_interface_property avalon_usb_slave linewrapBursts false
set_interface_property avalon_usb_slave maximumPendingReadTransactions 0
set_interface_property avalon_usb_slave minimumUninterruptedRunLength 1
set_interface_property avalon_usb_slave printableDevice false
set_interface_property avalon_usb_slave readLatency 0
set_interface_property avalon_usb_slave readWaitTime 100
set_interface_property avalon_usb_slave setupTime 100
set_interface_property avalon_usb_slave timingUnits nanoseconds
set_interface_property avalon_usb_slave writeWaitTime 100

set_interface_property avalon_usb_slave writeWaitStates 100
set_interface_property avalon_usb_slave readWaitStates 100

add_interface_port avalon_usb_slave address address Input 2
add_interface_port avalon_usb_slave chipselect chipselect Input 1
add_interface_port avalon_usb_slave read read Input 1
add_interface_port avalon_usb_slave write write Input 1
add_interface_port avalon_usb_slave writedata writedata Input 16
add_interface_port avalon_usb_slave readdata readdata Output 16
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_irq_slave
# | 
add_interface interrupt interrupt end 
set_interface_property interrupt associatedAddressablePoint avalon_usb_slave
set_interface_property interrupt associatedClock clk
set_interface_property interrupt associatedReset reset

add_interface_port interrupt irq irq Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point external_interface
# | 
add_interface external_interface conduit end 

add_interface_port external_interface OTG_INT1 export Input 1
add_interface_port external_interface OTG_DATA export Bidir 16
add_interface_port external_interface OTG_RST_N export Output 1
add_interface_port external_interface OTG_ADDR export Output 2
add_interface_port external_interface OTG_CS_N export Output 1
add_interface_port external_interface OTG_RD_N export Output 1
add_interface_port external_interface OTG_WR_N export Output 1
add_interface_port external_interface OTG_INT0 export Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of USB Controller"

	# get parameter values

	# set section values

	# set arguments
	set params ""
	set sections ""

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_usb.v" "altera_up_avalon_usb" $dest_name $params $sections
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" file:///acds_releases/acds/15.1/137/linux64/ip/altera/university_program/input_output/altera_up_avalon_usb/doc/USB.pdf
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421698013408
