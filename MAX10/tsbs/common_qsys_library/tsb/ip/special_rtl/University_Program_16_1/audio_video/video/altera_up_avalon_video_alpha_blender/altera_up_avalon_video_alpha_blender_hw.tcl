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
# | module altera_up_avalon_video_alpha_blending
# | 
set_module_property DESCRIPTION "Alpha Blender (RGBA) for DE-Series boards"
set_module_property NAME altera_up_avalon_video_alpha_blender
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Alpha Blender"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_video_alpha_blender.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_video_alpha_blender
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property HIDE_FROM_QUARTUS true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL false
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file altera_up_avalon_video_alpha_blender.v {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_video_alpha_blender_normal.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_video_alpha_blender_simple.v" {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter mode string "Simple"
set_parameter_property mode DISPLAY_NAME "Alpha Blending Mode"
#set_parameter_property mode GROUP "Video Color Format"
set_parameter_property mode UNITS None
set_parameter_property mode AFFECTS_ELABORATION true
set_parameter_property mode AFFECTS_GENERATION true
set_parameter_property mode ALLOWED_RANGES {"Normal" "Simple"}
set_parameter_property mode VISIBLE true
set_parameter_property mode ENABLED true
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
# | connection point avalon_foreground_sink
# | 
add_interface avalon_foreground_sink avalon_streaming end 
set_interface_property avalon_foreground_sink associatedClock clk
set_interface_property avalon_foreground_sink associatedReset reset
set_interface_property avalon_foreground_sink dataBitsPerSymbol 10
set_interface_property avalon_foreground_sink errorDescriptor ""
set_interface_property avalon_foreground_sink maxChannel 0
set_interface_property avalon_foreground_sink readyLatency 0
set_interface_property avalon_foreground_sink symbolsPerBeat 4

add_interface_port avalon_foreground_sink foreground_data data Input 40
add_interface_port avalon_foreground_sink foreground_startofpacket startofpacket Input 1
add_interface_port avalon_foreground_sink foreground_endofpacket endofpacket Input 1
#add_interface_port avalon_foreground_sink foreground_empty empty Input 2
add_interface_port avalon_foreground_sink foreground_valid valid Input 1
add_interface_port avalon_foreground_sink foreground_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_background_sink 
# | 
add_interface avalon_background_sink avalon_streaming end 
set_interface_property avalon_background_sink associatedClock clk
set_interface_property avalon_background_sink associatedReset reset
set_interface_property avalon_background_sink dataBitsPerSymbol 10
set_interface_property avalon_background_sink errorDescriptor ""
set_interface_property avalon_background_sink maxChannel 0
set_interface_property avalon_background_sink readyLatency 0
set_interface_property avalon_background_sink symbolsPerBeat 3
	
add_interface_port avalon_background_sink background_data data Input 30
add_interface_port avalon_background_sink background_startofpacket startofpacket Input 1
add_interface_port avalon_background_sink background_endofpacket endofpacket Input 1
#add_interface_port avalon_background_sink background_empty empty Input 2
add_interface_port avalon_background_sink background_valid valid Input 1
add_interface_port avalon_background_sink background_ready ready Output 1
# | 
# +-----------------------------------
	
# +-----------------------------------
# | connection point avalon_blended_source
# | 
add_interface avalon_blended_source avalon_streaming start 
set_interface_property avalon_blended_source associatedClock clk
set_interface_property avalon_blended_source associatedReset reset
set_interface_property avalon_blended_source dataBitsPerSymbol 10
set_interface_property avalon_blended_source errorDescriptor ""
set_interface_property avalon_blended_source maxChannel 0
set_interface_property avalon_blended_source readyLatency 0
set_interface_property avalon_blended_source symbolsPerBeat 3

add_interface_port avalon_blended_source output_ready ready Input 1
add_interface_port avalon_blended_source output_data data Output 30
add_interface_port avalon_blended_source output_startofpacket startofpacket Output 1
add_interface_port avalon_blended_source output_endofpacket endofpacket Output 1
#add_interface_port avalon_blended_source output_empty empty Output 2
add_interface_port avalon_blended_source output_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of the Alpha Blender"

	set mode [ get_parameter_value "mode" ]

	# get parameter values

	# set section values
	set use_normal_mode "USE_NORMAL_MODE:0"
	if { $mode == "Normal" } {
		set use_normal_mode "USE_NORMAL_MODE:1"
	}

	# set top_level_ports and external_port

	# set arguments
	set params ""
	set sections "$use_normal_mode"

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_alpha_blender.v" "altera_up_avalon_video_alpha_blender" $dest_name $params $sections
	# if { $mode == "Normal" } {
		# add_file "$dest_dir/altera_up_video_alpha_blender_normal.v" SYNTHESIS
		# file copy -force "hdl/altera_up_video_alpha_blender_normal.v" $dest_dir
	# } else {
		# add_file "$dest_dir/altera_up_video_alpha_blender_simple.v" SYNTHESIS
		# file copy -force "hdl/altera_up_video_alpha_blender_simple.v" $dest_dir
	# }
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" https://documentation.altera.com/#/link/bhc1411020596507/bhc1411020080713
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421697985505
