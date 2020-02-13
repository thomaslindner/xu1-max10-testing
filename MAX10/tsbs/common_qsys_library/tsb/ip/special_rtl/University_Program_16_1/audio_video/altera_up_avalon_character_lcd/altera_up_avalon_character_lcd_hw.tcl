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


# +----------------------------------------------------------------------------+
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

#package require -exact qsys 13.1

set aup_version 16.1

source "../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_character_lcd
# | 
set_module_property DESCRIPTION "Character LCD controller for DE2-series boards"
set_module_property NAME altera_up_avalon_character_lcd
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "16x2 Character Display"
set_module_property DATASHEET_URL "[pwd]/doc/Character_LCD.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_character_lcd.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_character_lcd
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL false
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file altera_up_avalon_character_lcd.v {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_character_lcd_communication.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_character_lcd_initialization.v" {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter cursor string Normal
set_parameter_property cursor DISPLAY_NAME "Display Cursor"
#set_parameter_property cursor GROUP "General"
set_parameter_property cursor UNITS None
set_parameter_property cursor AFFECTS_ELABORATION false
set_parameter_property cursor AFFECTS_GENERATION true
set_parameter_property cursor ALLOWED_RANGES {Normal Blinking Both None}
set_parameter_property cursor VISIBLE true
set_parameter_property cursor ENABLED true
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
# | connection point avalon_lcd_slave
# | 
add_interface avalon_lcd_slave avalon end 
set_interface_property avalon_lcd_slave addressAlignment DYNAMIC
set_interface_property avalon_lcd_slave associatedClock clk
set_interface_property avalon_lcd_slave associatedReset reset
set_interface_property avalon_lcd_slave bridgesToMaster ""
set_interface_property avalon_lcd_slave burstOnBurstBoundariesOnly false
#set_interface_property avalon_lcd_slave explicitAddressSpan 2
set_interface_property avalon_lcd_slave holdTime 0
set_interface_property avalon_lcd_slave isBigEndian  false
set_interface_property avalon_lcd_slave isFlash false
set_interface_property avalon_lcd_slave isMemoryDevice false
set_interface_property avalon_lcd_slave isNonVolatileStorage false
set_interface_property avalon_lcd_slave linewrapBursts false
set_interface_property avalon_lcd_slave maximumPendingReadTransactions 0
set_interface_property avalon_lcd_slave minimumUninterruptedRunLength 1
set_interface_property avalon_lcd_slave printableDevice false
set_interface_property avalon_lcd_slave readLatency 0
set_interface_property avalon_lcd_slave readWaitTime 1
set_interface_property avalon_lcd_slave setupTime 0
set_interface_property avalon_lcd_slave timingUnits cycles
set_interface_property avalon_lcd_slave writeWaitTime 0

add_interface_port avalon_lcd_slave address address Input 1
add_interface_port avalon_lcd_slave chipselect chipselect Input 1
add_interface_port avalon_lcd_slave read read Input 1
add_interface_port avalon_lcd_slave write write Input 1
add_interface_port avalon_lcd_slave writedata writedata Input 8
add_interface_port avalon_lcd_slave readdata readdata Output 8
add_interface_port avalon_lcd_slave waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point external_interface
# | 
add_interface external_interface conduit end 

add_interface_port external_interface LCD_DATA export Bidir 8
add_interface_port external_interface LCD_ON export Output 1
add_interface_port external_interface LCD_BLON export Output 1
add_interface_port external_interface LCD_EN export Output 1
add_interface_port external_interface LCD_RS export Output 1
add_interface_port external_interface LCD_RW export Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Character LCD"

	# get parameter values
	set cursor [ get_parameter_value "cursor" ]

	if { $cursor == "Normal" } {
		set cursor_on "CURSOR_ON:1'b1"
		set blinking  "BLINKING_ON:1'b0"
	} elseif { $cursor == "Blinking" } {
		set cursor_on "CURSOR_ON:1'b0"
		set blinking  "BLINKING_ON:1'b1"
	} elseif { $cursor == "Both" } {
		set cursor_on "CURSOR_ON:1'b1"
		set blinking  "BLINKING_ON:1'b1"
	} else {
		set cursor_on "CURSOR_ON:1'b0"
		set blinking  "BLINKING_ON:1'b0"
	}

	# set section values

	# set arguments
	set params "$cursor_on;$blinking"
	set sections ""

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}
	# add_file "$dest_dir/altera_up_character_lcd_communication.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_character_lcd_initialization.v" SYNTHESIS

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_character_lcd.v" "altera_up_avalon_character_lcd" $dest_name $params $sections
	# file copy -force "hdl/altera_up_character_lcd_communication.v" $dest_dir
	# file copy -force "hdl/altera_up_character_lcd_initialization.v" $dest_dir

	# generate top level template
	#alt_up_create_instantiation_template "$dest_dir$dest_name.inst.v" $dest_name "external_interface"
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" file:///ip/altera/university_program/audio_video/altera_up_avalon_character_lcd/doc/Character_LCD.pdf
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421698013408
