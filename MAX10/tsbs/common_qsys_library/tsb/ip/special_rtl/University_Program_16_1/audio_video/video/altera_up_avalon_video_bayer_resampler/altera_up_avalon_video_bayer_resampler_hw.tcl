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

source "../../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_video_bayer_resampler
# | 
set_module_property DESCRIPTION "Bayer Pattern Resampler for DE-Series Boards"
set_module_property NAME altera_up_avalon_video_bayer_resampler
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Bayer Pattern Resampler"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_video_bayer_resampler.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_video_bayer_resampler
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property HIDE_FROM_QUARTUS true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL false
set_module_property VALIDATION_CALLBACK validate
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file altera_up_avalon_video_bayer_resampler.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
#add_parameter device string "Custom"
add_parameter device string "5MP daughtercard (THDB_D5M)"
set_parameter_property device DISPLAY_NAME "Video Source"
set_parameter_property device UNITS None
set_parameter_property device AFFECTS_ELABORATION true
set_parameter_property device AFFECTS_GENERATION true
set_parameter_property device ALLOWED_RANGES {"1.3MP daughtercard (TRDB_DC2)" "5MP daughtercard (THDB_D5M)"}
#set_parameter_property device ALLOWED_RANGES {"Custom" "1.3MP daughtercard (TRDB_DC2)" "5MP daughtercard (THDB_D5M)"}
set_parameter_property device VISIBLE true
set_parameter_property device ENABLED true

add_parameter use_custom_format boolean true
set_parameter_property use_custom_format DISPLAY_NAME "Use default video format"
set_parameter_property use_custom_format GROUP "Input Video Format"
set_parameter_property use_custom_format UNITS None
set_parameter_property use_custom_format AFFECTS_ELABORATION true
set_parameter_property use_custom_format AFFECTS_GENERATION true
set_parameter_property use_custom_format VISIBLE true
set_parameter_property use_custom_format ENABLED true

add_parameter custom_width_in natural "2592"
set_parameter_property custom_width_in DISPLAY_NAME "Width (# of pixels)"
set_parameter_property custom_width_in GROUP "Input Video Format"
set_parameter_property custom_width_in UNITS None
set_parameter_property custom_width_in AFFECTS_ELABORATION true
set_parameter_property custom_width_in AFFECTS_GENERATION true
set_parameter_property custom_width_in VISIBLE true
set_parameter_property custom_width_in ENABLED true

add_parameter custom_height_in natural "1944"
set_parameter_property custom_height_in DISPLAY_NAME "Height (# of lines)"
set_parameter_property custom_height_in GROUP "Input Video Format"
set_parameter_property custom_height_in UNITS None
set_parameter_property custom_height_in AFFECTS_ELABORATION true
set_parameter_property custom_height_in AFFECTS_GENERATION true
set_parameter_property custom_height_in VISIBLE true
set_parameter_property custom_height_in ENABLED true

add_parameter width_in natural "2592"
set_parameter_property width_in DISPLAY_NAME "Width (# of pixels)"
set_parameter_property width_in GROUP "Input Video Format"
set_parameter_property width_in UNITS None
set_parameter_property width_in AFFECTS_ELABORATION true
set_parameter_property width_in AFFECTS_GENERATION true
set_parameter_property width_in DERIVED true
set_parameter_property width_in VISIBLE true
set_parameter_property width_in ENABLED false

add_parameter height_in natural "1944"
set_parameter_property height_in DISPLAY_NAME "Height (# of lines)"
set_parameter_property height_in GROUP "Input Video Format"
set_parameter_property height_in UNITS None
set_parameter_property height_in AFFECTS_ELABORATION true
set_parameter_property height_in AFFECTS_GENERATION true
set_parameter_property height_in DERIVED true
set_parameter_property height_in VISIBLE true
set_parameter_property height_in ENABLED false
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
# | connection point avalon_bayer_sink
# | 
add_interface avalon_bayer_sink avalon_streaming end 
set_interface_property avalon_bayer_sink associatedClock clk
set_interface_property avalon_bayer_sink associatedReset reset
set_interface_property avalon_bayer_sink dataBitsPerSymbol 8
set_interface_property avalon_bayer_sink errorDescriptor ""
set_interface_property avalon_bayer_sink maxChannel 0
set_interface_property avalon_bayer_sink readyLatency 0
set_interface_property avalon_bayer_sink symbolsPerBeat 1

add_interface_port avalon_bayer_sink stream_in_data data Input 8
add_interface_port avalon_bayer_sink stream_in_startofpacket startofpacket Input 1
add_interface_port avalon_bayer_sink stream_in_endofpacket endofpacket Input 1
#add_interface_port avalon_bayer_sink stream_in_empty empty Input 1
add_interface_port avalon_bayer_sink stream_in_valid valid Input 1
add_interface_port avalon_bayer_sink stream_in_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_bayer_source
# | 
add_interface avalon_bayer_source avalon_streaming start 
set_interface_property avalon_bayer_source associatedClock clk
set_interface_property avalon_bayer_source associatedReset reset
set_interface_property avalon_bayer_source dataBitsPerSymbol 8
set_interface_property avalon_bayer_source errorDescriptor ""
set_interface_property avalon_bayer_source maxChannel 0
set_interface_property avalon_bayer_source readyLatency 0
set_interface_property avalon_bayer_source symbolsPerBeat 3

add_interface_port avalon_bayer_source stream_out_ready ready Input 1
add_interface_port avalon_bayer_source stream_out_data data Output 24
add_interface_port avalon_bayer_source stream_out_startofpacket startofpacket Output 1
add_interface_port avalon_bayer_source stream_out_endofpacket endofpacket Output 1
#add_interface_port avalon_bayer_source stream_out_empty empty Output 2
add_interface_port avalon_bayer_source stream_out_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Validation function
# | 
proc validate {} {
	set device					[ get_parameter_value "device" ]
	set use_custom_format	[ get_parameter_value "use_custom_format" ]
	set custom_width_in		[ get_parameter_value "custom_width_in" ]
	set custom_height_in		[ get_parameter_value "custom_height_in" ]

	set_parameter_property custom_width_in VISIBLE false
	set_parameter_property custom_height_in VISIBLE false
	set_parameter_property width_in VISIBLE false
	set_parameter_property height_in VISIBLE false

	if { ($device == "Custom") || ($use_custom_format == "false") } {
		set_parameter_property custom_width_in VISIBLE true
		set_parameter_property custom_height_in VISIBLE true

		if {$custom_width_in != (($custom_width_in / 2) * 2)} {
			send_message error "The width must be an even number."
		}
		if {$custom_height_in != (($custom_height_in / 2) * 2)} {
			send_message error "The height must be an even number."
		}
		
		set_parameter_value width_in $custom_width_in
		set_parameter_value height_in $custom_height_in

		set new_width [ expr $custom_width_in / 2 ]
		set new_height [ expr $custom_height_in / 2 ]

		send_message info "Change in Resolution: $custom_width_in x $custom_height_in -> $new_width x $new_height"
	} elseif { $device == "5MP daughtercard (THDB_D5M)" } {
		set_parameter_property width_in VISIBLE true
		set_parameter_property height_in VISIBLE true
		set_parameter_value width_in "2592"
		set_parameter_value height_in "1944"
		send_message info "Change in Resolution: 2592 x 1944 -> 1296 x 972"
	} else {
		set_parameter_property width_in VISIBLE true
		set_parameter_property height_in VISIBLE true
		set_parameter_value width_in "1280"
		set_parameter_value height_in "1024"
		send_message info "Change in Resolution: 1280 x 1024 -> 640 x 512"
	}
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Video Bayer Pattern Resampler"

	# get parameter values
	set device		[ get_parameter_value "device" ]
	set width_in	[ get_parameter_value "width_in" ]
	set height_in	[ get_parameter_value "height_in" ]

	set ww			[ format "WW:%.0f" [ expr ceil ((log ($width_in) / (log (2))) - 1.0) ] ]
	set width		"IMAGE_WIDTH:$width_in"

	# set section values
	if { $device == "5MP daughtercard (THDB_D5M)" } {
		set use_rg_line_first "USE_RED_GREEN_LINE_FIRST:1"
	} else {
		set use_rg_line_first "USE_RED_GREEN_LINE_FIRST:0"
	}

	# set arguments
	set params "$ww;$width"
	set sections "$use_rg_line_first"

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_bayer_resampler.v" "altera_up_avalon_video_bayer_resampler" $dest_name $params $sections
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" file:///ip/altera/university_program/audio_video/video/doc/Video.pdf
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421698013408