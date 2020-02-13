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

source "../../../lib/aup_version.tcl"
source "../../../lib/aup_ip_generator.tcl"

# +-----------------------------------
# | module altera_up_avalon_video_csc
# | 
set_module_property DESCRIPTION "Colour-Space Converter for DE-Series Boards"
set_module_property NAME altera_up_avalon_video_csc
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Colour-Space Converter"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_video_csc.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_video_csc
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
#add_file altera_up_avalon_video_csc.v {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_YCrCb_to_RGB_converter.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_RGB_to_YCrCb_converter.v" {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter csc_type string "444 YCrCb to 24-bit RGB"
set_parameter_property csc_type DISPLAY_NAME "Colour-Space Conversion"
set_parameter_property csc_type Group "Mode"
set_parameter_property csc_type UNITS None
set_parameter_property csc_type AFFECTS_ELABORATION true
set_parameter_property csc_type AFFECTS_GENERATION true
#set_parameter_property csc_type ALLOWED_RANGES {"444 YCrCb to 24-bit RGB" "444 YCrCb to NTSC (YCrCb 422)" "444 YCrCb to Grayscale (Y)" "NTSC (YCrCb 422) to 444 YCrCb" "NTSC (YCrCb 422) to Grayscale (Y)" "Grayscale (Y) to RGB" "Grayscale (Y) to 444 YCrCb" "RGB to 444 YCrCb"}
set_parameter_property csc_type ALLOWED_RANGES {"444 YCrCb to 24-bit RGB" "Grayscale (Y) to 24-bit RGB" "24-bit RGB to 444 YCrCb" "24-bit RGB to Grayscale (Y)"}
set_parameter_property csc_type VISIBLE true
set_parameter_property csc_type ENABLED true

add_parameter input_type string "444 YCrCb"
set_parameter_property input_type DISPLAY_NAME "Input Colour Space"
set_parameter_property input_type UNITS None
set_parameter_property input_type AFFECTS_ELABORATION true
set_parameter_property input_type AFFECTS_GENERATION true
set_parameter_property input_type ALLOWED_RANGES {"444 YCrCb" "Grayscale (Y)" "24-bit RGB"}
set_parameter_property input_type DERIVED true
set_parameter_property input_type VISIBLE false
set_parameter_property input_type ENABLED false

add_parameter output_type string "24-bit RGB"
set_parameter_property output_type DISPLAY_NAME "Output Colour Space"
set_parameter_property output_type UNITS None
set_parameter_property output_type AFFECTS_ELABORATION true
set_parameter_property output_type AFFECTS_GENERATION true
set_parameter_property output_type ALLOWED_RANGES {"444 YCrCb" "Grayscale (Y)" "24-bit RGB"}
set_parameter_property output_type DERIVED true
set_parameter_property output_type VISIBLE false
set_parameter_property output_type ENABLED false

add_parameter input_bits integer "8"
set_parameter_property input_bits DISPLAY_NAME "Input Colour Bits"
set_parameter_property input_bits GROUP "Input Size"
set_parameter_property input_bits UNITS None
set_parameter_property input_bits AFFECTS_ELABORATION true
set_parameter_property input_bits AFFECTS_GENERATION true
set_parameter_property input_bits DERIVED true
set_parameter_property input_bits VISIBLE false
set_parameter_property input_bits ENABLED false

add_parameter input_planes integer "3"
set_parameter_property input_planes DISPLAY_NAME "Input Colour Planes"
set_parameter_property input_planes GROUP "Input Size"
set_parameter_property input_planes UNITS None
set_parameter_property input_planes AFFECTS_ELABORATION true
set_parameter_property input_planes AFFECTS_GENERATION true
set_parameter_property input_planes DERIVED true
set_parameter_property input_planes VISIBLE false
set_parameter_property input_planes ENABLED false

add_parameter output_bits integer "8"
set_parameter_property output_bits DISPLAY_NAME "Output Colour Bits"
set_parameter_property output_bits GROUP "Output Size"
set_parameter_property output_bits UNITS None
set_parameter_property output_bits AFFECTS_ELABORATION true
set_parameter_property output_bits AFFECTS_GENERATION true
set_parameter_property output_bits DERIVED true
set_parameter_property output_bits VISIBLE false
set_parameter_property output_bits ENABLED false

add_parameter output_planes integer "3"
set_parameter_property output_planes DISPLAY_NAME "Output Colour Planes"
set_parameter_property output_planes GROUP "Output Size"
set_parameter_property output_planes UNITS None
set_parameter_property output_planes AFFECTS_ELABORATION true
set_parameter_property output_planes AFFECTS_GENERATION true
set_parameter_property output_planes DERIVED true
set_parameter_property output_planes VISIBLE false
set_parameter_property output_planes ENABLED false
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
# | connection point avalon_csc_sink
# | 
add_interface avalon_csc_sink avalon_streaming end
set_interface_property avalon_csc_sink associatedClock clk
set_interface_property avalon_csc_sink associatedReset reset
set_interface_property avalon_csc_sink errorDescriptor ""
set_interface_property avalon_csc_sink maxChannel 0
set_interface_property avalon_csc_sink readyLatency 0

add_interface_port avalon_csc_sink stream_in_startofpacket startofpacket Input 1
add_interface_port avalon_csc_sink stream_in_endofpacket endofpacket Input 1
add_interface_port avalon_csc_sink stream_in_valid valid Input 1
add_interface_port avalon_csc_sink stream_in_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_csc_source
# | 
add_interface avalon_csc_source avalon_streaming start 
set_interface_property avalon_csc_source associatedClock clk
set_interface_property avalon_csc_source associatedReset reset
set_interface_property avalon_csc_source errorDescriptor ""
set_interface_property avalon_csc_source maxChannel 0
set_interface_property avalon_csc_source readyLatency 0

add_interface_port avalon_csc_source stream_out_ready ready Input 1
add_interface_port avalon_csc_source stream_out_startofpacket startofpacket Output 1
add_interface_port avalon_csc_source stream_out_endofpacket endofpacket Output 1
add_interface_port avalon_csc_source stream_out_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Validation function
# | 
proc validate {} {
	set csc_type [ get_parameter_value "csc_type" ]
	set input_bits [ get_parameter_value "input_bits" ]
	set output_bits [ get_parameter_value "output_bits" ]
	
	if { $csc_type == "444 YCrCb to 24-bit RGB" } {
		set_parameter_value input_type "444 YCrCb"
		set_parameter_value output_type "24-bit RGB" 
		set_parameter_value input_planes 3 
		set_parameter_value output_planes 3 
	} elseif { $csc_type == "Grayscale (Y) to 24-bit RGB" } {
		set_parameter_value input_type "Grayscale (Y)"
		set_parameter_value output_type "24-bit RGB" 
		set_parameter_value input_planes 1 
		set_parameter_value output_planes 3 
	} elseif { $csc_type == "24-bit RGB to 444 YCrCb" } {
		set_parameter_value input_type "24-bit RGB"
		set_parameter_value output_type "444 YCrCb" 
		set_parameter_value input_planes 3 
		set_parameter_value output_planes 3 
	} elseif { $csc_type == "24-bit RGB to Grayscale (Y)" } {
		set_parameter_value input_type "24-bit RGB"
		set_parameter_value output_type "Grayscale (Y)" 
		set_parameter_value input_planes 3 
		set_parameter_value output_planes 1 
	}

	set input_type [ get_parameter_value "input_type" ]
	set output_type [ get_parameter_value "output_type" ]
	set input_planes [ get_parameter_value "input_planes" ]
	set output_planes [ get_parameter_value "output_planes" ]

	send_message info "Colour Space Conversion: $input_bits (bits) x $input_planes (planes) ($input_type) -> $output_bits (bits) x $output_planes (planes) ($output_type)"
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Elaboration function
# | 
proc elaborate {} {
	set csc_type [ get_parameter_value "csc_type" ]
	set input_type [ get_parameter_value "input_type" ]
	set output_type [ get_parameter_value "output_type" ]
	set input_bits [ get_parameter_value "input_bits" ]
	set input_planes [ get_parameter_value "input_planes" ]
	set output_bits [ get_parameter_value "output_bits" ]
	set output_planes [ get_parameter_value "output_planes" ]

	set iw [ expr $input_bits * $input_planes ]
	set ow [ expr $output_bits * $output_planes ]

	if { $csc_type == "444 YCrCb to 24-bit RGB" } {
		set eiw 2
		set eow 2
	} elseif { $csc_type == "Grayscale (Y) to 24-bit RGB" } {
		set eiw 1
		set eow 2
	} elseif { $csc_type == "24-bit RGB to 444 YCrCb" } {
		set eiw 2
		set eow 2
	} elseif { $csc_type == "24-bit RGB to Grayscale (Y)" } {
		set eiw 2
		set eow 1
	}

	# +-----------------------------------
	# | connection point avalon_csc_sink
	# | 
	set_interface_property avalon_csc_sink dataBitsPerSymbol $input_bits
	set_interface_property avalon_csc_sink symbolsPerBeat $input_planes
	
	add_interface_port avalon_csc_sink stream_in_data data Input $iw
#	add_interface_port avalon_csc_sink stream_in_empty empty Input $eiw
	# | 
	# +-----------------------------------

	# +-----------------------------------
	# | connection point avalon_csc_source
	# | 
	set_interface_property avalon_csc_source dataBitsPerSymbol $output_bits
	set_interface_property avalon_csc_source symbolsPerBeat $output_planes

	add_interface_port avalon_csc_source stream_out_data data Output $ow
#	add_interface_port avalon_csc_source stream_out_empty empty Output $eow
	# | 
	# +-----------------------------------
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Colour Space Converter"

	# get parameter values
	set csc_type [ get_parameter_value "csc_type" ]
	set input_type [ get_parameter_value "input_type" ]
	set output_type [ get_parameter_value "output_type" ]
	set input_bits [ get_parameter_value "input_bits" ]
	set input_planes [ get_parameter_value "input_planes" ]
	set output_bits [ get_parameter_value "output_bits" ]
	set output_planes [ get_parameter_value "output_planes" ]

	set input_datawidth		[ format "IW:%d" [ expr (($input_bits * $input_planes) - 1) ] ]
	set output_datawidth	[ format "OW:%d" [ expr (($output_bits * $output_planes) - 1) ] ]

	if { $csc_type == "444 YCrCb to 24-bit RGB" } {
		set eiw "EIW:1"
		set eow "EOW:1"
	} elseif { $csc_type == "Grayscale (Y) to 24-bit RGB" } {
		set eiw "EIW:0"
		set eow "EOW:1"
	} elseif { $csc_type == "24-bit RGB to 444 YCrCb" } {
		set eiw "EIW:1"
		set eow "EOW:1"
	} elseif { $csc_type == "24-bit RGB to Grayscale (Y)" } {
		set eiw "EIW:1"
		set eow "EOW:0"
	}


	# set section values
	set use_YCrCb_to_RGB "USE_YCRCB_TO_RGB:0"
	set use_Y_to_RGB "USE_Y_TO_RGB:0"
	set use_RGB_to_YCrCb "USE_RGB_TO_YCRCB:0"
	set use_RGB_to_Y "USE_RGB_TO_Y:0"

	if { $csc_type == "444 YCrCb to 24-bit RGB" } {
		set use_YCrCb_to_RGB "USE_YCRCB_TO_RGB:1"
		
	} elseif { $csc_type == "Grayscale (Y) to 24-bit RGB" } {
		set use_Y_to_RGB "USE_Y_TO_RGB:1"
		
	} elseif { $csc_type == "24-bit RGB to 444 YCrCb" } {
		set use_RGB_to_YCrCb "USE_RGB_TO_YCRCB:1"
		
	} elseif { $csc_type == "24-bit RGB to Grayscale (Y)" } {
		set use_RGB_to_Y "USE_RGB_TO_Y:1"
	}

	# set arguments
	set params "$input_datawidth;$output_datawidth;$eiw;$eow"
	set sections "$use_YCrCb_to_RGB;$use_Y_to_RGB;$use_RGB_to_YCrCb;$use_RGB_to_Y"

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}
	# add_file "$dest_dir/altera_up_YCrCb_to_RGB_converter.v" SYNTHESIS
	# add_file "$dest_dir/ltera_up_RGB_to_YCrCb_converter.v" SYNTHESIS

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_csc.v" "altera_up_avalon_video_csc" $dest_name $params $sections
	# file copy -force "hdl/altera_up_YCrCb_to_RGB_converter.v" $dest_dir
	# file copy -force "hdl/altera_up_RGB_to_YCrCb_converter.v" $dest_dir
}
# | 
# +-----------------------------------

