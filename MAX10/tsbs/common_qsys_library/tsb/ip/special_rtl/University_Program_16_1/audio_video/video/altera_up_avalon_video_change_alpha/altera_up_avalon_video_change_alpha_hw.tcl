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

set aup_version 16.1

source "../../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_video_change_alpha
# | 
set_module_property DESCRIPTION "Changes the alpha value for all pixels of a given color"
set_module_property NAME altera_up_avalon_video_change_alpha
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Change Alpha Value"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_video_change_alpha.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_video_change_alpha
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property HIDE_FROM_QUARTUS true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL false
set_module_property VALIDATION_CALLBACK validate
set_module_property ELABORATION_CALLBACK elaborate
set_module_property GENERATION_CALLBACK generate
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
#add_file altera_up_avalon_video_change_alpha.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter color integer "0"
set_parameter_property color DISPLAY_NAME "Color Selection"
set_parameter_property color UNITS None
set_parameter_property color AFFECTS_ELABORATION true
set_parameter_property color AFFECTS_GENERATION true
set_parameter_property color ALLOWED_RANGES 0:1073741823
set_parameter_property color VISIBLE true
set_parameter_property color ENABLED true

add_parameter alpha integer "0"
set_parameter_property alpha DISPLAY_NAME "New Alpha Value"
set_parameter_property alpha UNITS None
set_parameter_property alpha AFFECTS_ELABORATION true
set_parameter_property alpha AFFECTS_GENERATION true
set_parameter_property alpha ALLOWED_RANGES 0:1023
set_parameter_property alpha VISIBLE true
set_parameter_property alpha ENABLED true

add_parameter color_bits positive "10"
set_parameter_property color_bits DISPLAY_NAME "Color Bits"
set_parameter_property color_bits GROUP "Pixel Format"
set_parameter_property color_bits UNITS None
set_parameter_property color_bits AFFECTS_ELABORATION true
set_parameter_property color_bits AFFECTS_GENERATION true
set_parameter_property color_bits VISIBLE true
set_parameter_property color_bits ENABLED true

add_parameter color_planes positive "4"
set_parameter_property color_planes DISPLAY_NAME "Color Planes"
set_parameter_property color_planes GROUP "Pixel Format"
set_parameter_property color_planes UNITS None
set_parameter_property color_planes AFFECTS_ELABORATION true
set_parameter_property color_planes AFFECTS_GENERATION true
set_parameter_property color_planes ALLOWED_RANGES {4}
set_parameter_property color_planes VISIBLE true
set_parameter_property color_planes ENABLED false
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
# | connection point avalon_apply_alpha_sink
# | 
add_interface avalon_apply_alpha_sink avalon_streaming end 
set_interface_property avalon_apply_alpha_sink associatedClock clk
set_interface_property avalon_apply_alpha_sink associatedReset reset
set_interface_property avalon_apply_alpha_sink errorDescriptor ""
set_interface_property avalon_apply_alpha_sink maxChannel 0
set_interface_property avalon_apply_alpha_sink readyLatency 0

add_interface_port avalon_apply_alpha_sink stream_in_startofpacket startofpacket Input 1
add_interface_port avalon_apply_alpha_sink stream_in_endofpacket endofpacket Input 1
add_interface_port avalon_apply_alpha_sink stream_in_valid valid Input 1
add_interface_port avalon_apply_alpha_sink stream_in_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_apply_alpha_source
# | 
add_interface avalon_apply_alpha_source avalon_streaming start 
set_interface_property avalon_apply_alpha_source associatedClock clk
set_interface_property avalon_apply_alpha_source associatedReset reset
set_interface_property avalon_apply_alpha_source errorDescriptor ""
set_interface_property avalon_apply_alpha_source maxChannel 0
set_interface_property avalon_apply_alpha_source readyLatency 0

add_interface_port avalon_apply_alpha_source stream_out_ready ready Input 1
add_interface_port avalon_apply_alpha_source stream_out_startofpacket startofpacket Output 1
add_interface_port avalon_apply_alpha_source stream_out_endofpacket endofpacket Output 1
add_interface_port avalon_apply_alpha_source stream_out_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Validation function
# | 
proc validate {} {
	set color				[ get_parameter_value "color" ]
	set alpha				[ get_parameter_value "alpha" ]
	set color_bits			[ get_parameter_value "color_bits" ]
	set color_planes		[ get_parameter_value "color_planes" ]

	set color_max_value	[ expr { int(pow(2, $color_bits * 3) - 1) } ]
	set alpha_max_value	[ expr { int(pow(2, $color_bits) - 1) } ]

	# send_message info "color_max_value: $color_max_value"
	# send_message info "alpha_max_value: $alpha_max_value"

	set_parameter_property color ALLOWED_RANGES 0:$color_max_value
	set_parameter_property alpha ALLOWED_RANGES 0:$alpha_max_value
	
	if { $color < 0 } {
		set_parameter_value color 0 
	} elseif { $color > $color_max_value } {
		set_parameter_value color $color_max_value 
	}

	if { $alpha < 0 } {
		set_parameter_value alpha 0 
	} elseif { $alpha > $alpha_max_value } {
		set_parameter_value alpha $alpha_max_value 
	}
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Elaboration function
# | 
proc elaborate {} {
	set color				[ get_parameter_value "color" ]
	set alpha				[ get_parameter_value "alpha" ]
	set color_bits			[ get_parameter_value "color_bits" ]
	set color_planes		[ get_parameter_value "color_planes" ]

	set dw [ expr $color_bits * 4 ]

	# +-----------------------------------
	# | connection point avalon_apply_alpha_sink
	# | 
	set_interface_property avalon_apply_alpha_sink dataBitsPerSymbol $color_bits
	set_interface_property avalon_apply_alpha_sink symbolsPerBeat $color_planes
	
	add_interface_port avalon_apply_alpha_sink stream_in_data data Input $dw
	# | 
	# +-----------------------------------

	# +-----------------------------------
	# | connection point avalon_apply_alpha_source
	# | 
	set_interface_property avalon_apply_alpha_source dataBitsPerSymbol $color_bits
	set_interface_property avalon_apply_alpha_source symbolsPerBeat $color_planes

	add_interface_port avalon_apply_alpha_source stream_out_data data Output $dw
	# | 
	# +-----------------------------------
	
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Video Change Alpha Value IP Core"

	# get parameter values
	set color				[ get_parameter_value "color" ]
	set alpha				[ get_parameter_value "alpha" ]
	set color_bits			[ get_parameter_value "color_bits" ]
	set color_planes		[ get_parameter_value "color_planes" ]

	# get parameter values
	set cw	[ format "CW:%d" [ expr (($color_bits * 3) - 1) ] ]
	set dw	[ format "DW:%d" [ expr (($color_bits * 4) - 1) ] ]

	set color_value	[ format "COLOR:%d'd$color" [ expr ($color_bits * 3) ] ]
	set alpha_value	"ALPHA:$color_bits'd$alpha"

	# set section values

	# set arguments
	set params "$cw;$dw;$color_value;$alpha_value"
	set sections ""

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_change_alpha.v" "altera_up_avalon_video_change_alpha" $dest_name $params $sections
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" https://documentation.altera.com/#/link/bhc1411020596507/bhc1411020313996
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421697985505
