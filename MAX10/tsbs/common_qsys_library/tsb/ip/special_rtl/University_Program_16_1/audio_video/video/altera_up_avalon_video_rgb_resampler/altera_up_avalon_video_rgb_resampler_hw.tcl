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
# | module altera_up_avalon_video_rgb_resampler
# | 
set_module_property DESCRIPTION "RGB Resampler for DE-series Boards"
set_module_property NAME altera_up_avalon_video_rgb_resampler
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "RGB Resampler"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE altera_up_avalon_video_rgb_resampler.v
#set_module_property TOP_LEVEL_HDL_MODULE altera_up_avalon_video_rgb_resampler
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
#add_file altera_up_avalon_video_rgb_resampler.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter input_type string "16-bit RGB"
set_parameter_property input_type DISPLAY_NAME "Incoming Format"
set_parameter_property input_type UNITS None
set_parameter_property input_type AFFECTS_ELABORATION true
set_parameter_property input_type AFFECTS_GENERATION true
set_parameter_property input_type ALLOWED_RANGES {"1-bit Black/White" "8-bit Grayscale" "8-bit RGB" "9-bit RGB" "16-bit RGB" "24-bit RGB" "30-bit RGB" "12-bit RGBA" "16-bit RGBA" "32-bit RGBA" "40-bit RGBA"}
set_parameter_property input_type VISIBLE true
set_parameter_property input_type ENABLED true

add_parameter output_type string "30-bit RGB"
set_parameter_property output_type DISPLAY_NAME "Outgoing Format"
set_parameter_property output_type UNITS None
set_parameter_property output_type AFFECTS_ELABORATION true
set_parameter_property output_type AFFECTS_GENERATION true
set_parameter_property output_type ALLOWED_RANGES {"1-bit Black/White" "8-bit Grayscale" "8-bit RGB" "9-bit RGB" "16-bit RGB" "24-bit RGB" "30-bit RGB" "12-bit RGBA" "16-bit RGBA" "32-bit RGBA" "40-bit RGBA"}
set_parameter_property output_type VISIBLE true
set_parameter_property output_type ENABLED true

add_parameter alpha integer "1023"
set_parameter_property alpha DISPLAY_NAME "Alpha Value for Output"
set_parameter_property alpha UNITS None
set_parameter_property alpha AFFECTS_ELABORATION true
set_parameter_property alpha AFFECTS_GENERATION true
set_parameter_property alpha ALLOWED_RANGES 0:1023
set_parameter_property alpha VISIBLE true
set_parameter_property alpha ENABLED false

add_parameter input_bits positive "16"
set_parameter_property input_bits DISPLAY_NAME "Color Bits"
set_parameter_property input_bits GROUP "Input Pixel Format"
set_parameter_property input_bits UNITS None
set_parameter_property input_bits AFFECTS_ELABORATION true
set_parameter_property input_bits AFFECTS_GENERATION true
set_parameter_property input_bits DERIVED true
set_parameter_property input_bits VISIBLE false
set_parameter_property input_bits ENABLED false

add_parameter input_planes integer "1"
set_parameter_property input_planes DISPLAY_NAME "Color Planes"
set_parameter_property input_planes GROUP "Input Pixel Format"
set_parameter_property input_planes UNITS None
set_parameter_property input_planes AFFECTS_ELABORATION true
set_parameter_property input_planes AFFECTS_GENERATION true
set_parameter_property input_planes DERIVED true
set_parameter_property input_planes VISIBLE false
set_parameter_property input_planes ENABLED false

add_parameter output_bits positive "10"
set_parameter_property output_bits DISPLAY_NAME "Color Bits"
set_parameter_property output_bits GROUP "Output Pixel Format"
set_parameter_property output_bits UNITS None
set_parameter_property output_bits AFFECTS_ELABORATION true
set_parameter_property output_bits AFFECTS_GENERATION true
set_parameter_property output_bits DERIVED true
set_parameter_property output_bits VISIBLE false
set_parameter_property output_bits ENABLED false

add_parameter output_planes integer "3"
set_parameter_property output_planes DISPLAY_NAME "Color Planes"
set_parameter_property output_planes GROUP "Output Pixel Format"
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
# | connection point avalon_rgb_sink
# | 
add_interface avalon_rgb_sink avalon_streaming end 
set_interface_property avalon_rgb_sink associatedClock clk
set_interface_property avalon_rgb_sink associatedReset reset
set_interface_property avalon_rgb_sink errorDescriptor ""
set_interface_property avalon_rgb_sink maxChannel 0
set_interface_property avalon_rgb_sink readyLatency 0

add_interface_port avalon_rgb_sink stream_in_startofpacket startofpacket Input 1
add_interface_port avalon_rgb_sink stream_in_endofpacket endofpacket Input 1
add_interface_port avalon_rgb_sink stream_in_valid valid Input 1
add_interface_port avalon_rgb_sink stream_in_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_rgb_source
# | 
add_interface avalon_rgb_source avalon_streaming start 
set_interface_property avalon_rgb_source associatedClock clk
set_interface_property avalon_rgb_source associatedReset reset
set_interface_property avalon_rgb_source errorDescriptor ""
set_interface_property avalon_rgb_source maxChannel 0
set_interface_property avalon_rgb_source readyLatency 0

add_interface_port avalon_rgb_source stream_out_ready ready Input 1
add_interface_port avalon_rgb_source stream_out_startofpacket startofpacket Output 1
add_interface_port avalon_rgb_source stream_out_endofpacket endofpacket Output 1
add_interface_port avalon_rgb_source stream_out_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Validation function
# | 
proc validate {} {
	set input_type [ get_parameter_value "input_type" ]
	set output_type [ get_parameter_value "output_type" ]
	set alpha [ get_parameter_value "alpha" ]

	set no_alpha_with_input true
	if	{ ($input_type == "12-bit RGBA") || ($input_type == "16-bit RGBA") || ($input_type == "32-bit RGBA") || ($input_type == "40-bit RGBA") } {
		set no_alpha_with_input false
	}


	set_parameter_property alpha ENABLED false
	if { ($output_type == "12-bit RGBA") && $no_alpha_with_input } {
		set_parameter_property alpha ENABLED true
		if { $alpha < 0 } {
			set_parameter_value alpha 0 
		}
		if { $alpha > 7 } {
			set_parameter_value alpha 7 
		}
	}
	if { ($output_type == "16-bit RGBA") && $no_alpha_with_input } {
		set_parameter_property alpha ENABLED true
		if { $alpha < 0 } {
			set_parameter_value alpha 0 
		}
		if { $alpha > 15 } {
			set_parameter_value alpha 15 
		}
	}
	if { ($output_type == "32-bit RGBA") && $no_alpha_with_input } {
		set_parameter_property alpha ENABLED true
		if { $alpha < 0 } {
			set_parameter_value alpha 0 
		}
		if { $alpha > 255 } {
			set_parameter_value alpha 255 
		}
	}
	if { ($output_type == "40-bit RGBA") && $no_alpha_with_input } {
		set_parameter_property alpha ENABLED true
		if { $alpha < 0 } {
			set_parameter_value alpha 0 
		}
		if { $alpha > 1023 } {
			set_parameter_value alpha 1023 
		}
	}

	if { $input_type == "1-bit Black/White" } {
		set input_planes 1 
		set input_bits 1
	} elseif { $input_type == "8-bit Grayscale" } {
		set input_planes 1 
		set input_bits 8
	} elseif { $input_type == "8-bit RGB" } {
		set input_planes 1 
		set input_bits 8
	} elseif { $input_type == "9-bit RGB" } {
		set input_planes 3 
		set input_bits 3
	} elseif { $input_type == "16-bit RGB" } {
		set input_planes 1 
		set input_bits 16
	} elseif { $input_type == "24-bit RGB" } {
		set input_planes 3
		set input_bits 8
	} elseif { $input_type == "30-bit RGB" } {
		set input_planes 3
		set input_bits 10
	} elseif { $input_type == "12-bit RGBA" } {
		set input_planes 4
		set input_bits 3
	} elseif { $input_type == "16-bit RGBA" } {
		set input_planes 4
		set input_bits 4
	} elseif { $input_type == "32-bit RGBA" } {
		set input_planes 4
		set input_bits 8
	} elseif { $input_type == "40-bit RGBA" } {
		set input_planes 4
		set input_bits 10
	}
	set_parameter_value input_bits $input_bits 
	set_parameter_value input_planes $input_planes

	if { $output_type == "1-bit Black/White" } {
		set output_planes 1 
		set output_bits 1
	} elseif { $output_type == "8-bit Grayscale" } {
		set output_planes 1 
		set output_bits 8
	} elseif { $output_type == "8-bit RGB" } {
		set output_planes 1 
		set output_bits 8
	} elseif { $output_type == "9-bit RGB" } {
		set output_planes 3 
		set output_bits 3
	} elseif { $output_type == "16-bit RGB" } {
		set output_planes 1 
		set output_bits 16
	} elseif { $output_type == "24-bit RGB" } {
		set output_planes 3
		set output_bits 8
	} elseif { $output_type == "30-bit RGB" } {
		set output_planes 3
		set output_bits 10
	} elseif { $output_type == "12-bit RGBA" } {
		set output_planes 4
		set output_bits 3
	} elseif { $output_type == "16-bit RGBA" } {
		set output_planes 4
		set output_bits 4
	} elseif { $output_type == "32-bit RGBA" } {
		set output_planes 4
		set output_bits 8
	} elseif { $output_type == "40-bit RGBA" } {
		set output_planes 4
		set output_bits 10
	}
	set_parameter_value output_bits $output_bits 
	set_parameter_value output_planes $output_planes

	if { $output_type == $input_type } {
		send_message error "The inputs and outputs cannot be set to the same type."
	}

	send_message info "RGB Resampling: $input_bits (bits) x $input_planes (planes) -> $output_bits (bits) x $output_planes (planes)"
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Elaboration function
# | 
proc elaborate {} {
	set input_bits [ get_parameter_value "input_bits" ]
	set input_planes [ get_parameter_value "input_planes" ]
	set output_bits [ get_parameter_value "output_bits" ]
	set output_planes [ get_parameter_value "output_planes" ]

	set idw [ expr $input_bits * $input_planes ]
	set odw [ expr $output_bits * $output_planes ]

	if { ($input_planes == 4) || ($input_planes == 3) } {
		set iew 2
	} else {
		set iew 1
	}
	if { ($output_planes == 4) || ($output_planes == 3) } {
		set oew 2
	} else {
		set oew 1
	}

	# +-----------------------------------
	# | connection point avalon_rgb_sink
	# | 
	set_interface_property avalon_rgb_sink dataBitsPerSymbol $input_bits
	set_interface_property avalon_rgb_sink symbolsPerBeat $input_planes
	
	add_interface_port avalon_rgb_sink stream_in_data data Input $idw
#	add_interface_port avalon_rgb_sink stream_in_empty empty Input $iew
	# | 
	# +-----------------------------------

	# +-----------------------------------
	# | connection point avalon_rgb_source
	# | 
	set_interface_property avalon_rgb_source dataBitsPerSymbol $output_bits
	set_interface_property avalon_rgb_source symbolsPerBeat $output_planes

	add_interface_port avalon_rgb_source stream_out_data data Output $odw
#	add_interface_port avalon_rgb_source stream_out_empty empty Output $oew
	# | 
	# +-----------------------------------
}
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Video RGB Resampler"

	# get parameter values
	set input_type [ get_parameter_value "input_type" ]
	set output_type [ get_parameter_value "output_type" ]
	set alpha [ get_parameter_value "alpha" ]
	set input_bits [ get_parameter_value "input_bits" ]
	set input_planes [ get_parameter_value "input_planes" ]
	set output_bits [ get_parameter_value "output_bits" ]
	set output_planes [ get_parameter_value "output_planes" ]

	set input_dw		[ format "IDW:%d" [ expr (($input_bits * $input_planes) - 1) ] ]
	set output_dw		[ format "ODW:%d" [ expr (($output_bits * $output_planes) - 1) ] ]

	if { ($input_planes == 4) || ($input_planes == 3) } {
		set input_ew	"IEW:1"
	} else {
		set input_ew	"IEW:0"
	}
	if { ($output_planes == 4) || ($output_planes == 3) } {
		set output_ew	"OEW:1"
	} else {
		set output_ew	"OEW:0"
	}

	set alpha_value	"ALPHA:10'h3FF"
	if { $output_type == "12-bit RGBA" } {
		set alpha_value	"ALPHA:3'd$alpha"
	} elseif { $output_type == "16-bit RGBA" } {
		set alpha_value	"ALPHA:4'd$alpha"
	} elseif { $output_type == "32-bit RGBA" } {
		set alpha_value	"ALPHA:8'd$alpha"
	} elseif { $output_type == "40-bit RGBA" } {
		set alpha_value	"ALPHA:10'd$alpha"
	}

	# set section values
	set use_bw_in					"USE_BW_IN:0"
	set use_gray_in				"USE_GRAY_IN:0"
	set use_8_bits_in				"USE_8_BITS_IN:0"
	set use_9_bits_in				"USE_9_BITS_IN:0"
	set use_16_bits_in			"USE_16_BITS_IN:0"
	set use_24_bits_in			"USE_24_BITS_IN:0"
	set use_30_bits_in			"USE_30_BITS_IN:0"
	set use_A_12_bits_in			"USE_A_12_BITS_IN:0"
	set use_A_16_bits_in			"USE_A_16_BITS_IN:0"
	set use_A_32_bits_in			"USE_A_32_BITS_IN:0"
	set use_A_40_bits_in			"USE_A_40_BITS_IN:0"
	if { $input_type			== "1-bit Black/White" } {
		set use_bw_in				"USE_BW_IN:1"
	} elseif { $input_type	== "8-bit Grayscale" } {
		set use_gray_in			"USE_GRAY_IN:1"
	} elseif { $input_type	== "8-bit RGB" } {
		set use_8_bits_in			"USE_8_BITS_IN:1"
	} elseif { $input_type	== "9-bit RGB" } {
		set use_9_bits_in			"USE_9_BITS_IN:1"
	} elseif { $input_type	== "16-bit RGB" } {
		set use_16_bits_in		"USE_16_BITS_IN:1"
	} elseif { $input_type	== "24-bit RGB" } {
		set use_24_bits_in		"USE_24_BITS_IN:1"
	} elseif { $input_type	== "30-bit RGB" } {
		set use_30_bits_in		"USE_30_BITS_IN:1"
	} elseif { $input_type	== "12-bit RGBA" } {
		set use_A_12_bits_in		"USE_A_12_BITS_IN:1"
	} elseif { $input_type	== "16-bit RGBA" } {
		set use_A_16_bits_in		"USE_A_16_BITS_IN:1"
	} elseif { $input_type	== "32-bit RGBA" } {
		set use_A_32_bits_in		"USE_A_32_BITS_IN:1"
	} elseif { $input_type	== "40-bit RGBA" } {
		set use_A_40_bits_in		"USE_A_40_BITS_IN:1"
	}
	set input_sections "$use_bw_in;$use_gray_in;$use_8_bits_in;$use_9_bits_in;$use_16_bits_in;$use_24_bits_in;$use_30_bits_in;$use_A_12_bits_in;$use_A_16_bits_in;$use_A_32_bits_in;$use_A_40_bits_in"

	set use_bw_out					"USE_BW_OUT:0"
	set use_gray_out				"USE_GRAY_OUT:0"
	set use_8_bits_out			"USE_8_BITS_OUT:0"
	set use_9_bits_out			"USE_9_BITS_OUT:0"
	set use_16_bits_out			"USE_16_BITS_OUT:0"
	set use_24_bits_out			"USE_24_BITS_OUT:0"
	set use_30_bits_out			"USE_30_BITS_OUT:0"
	set use_A_12_bits_out		"USE_A_12_BITS_OUT:0"
	set use_A_16_bits_out		"USE_A_16_BITS_OUT:0"
	set use_A_32_bits_out		"USE_A_32_BITS_OUT:0"
	set use_A_40_bits_out		"USE_A_40_BITS_OUT:0"
	if { $output_type			== "1-bit Black/White" } {
		set use_bw_out				"USE_BW_OUT:1"
	} elseif { $output_type	== "8-bit Grayscale" } {
		set use_gray_out			"USE_GRAY_OUT:1"
	} elseif { $output_type	== "8-bit RGB" } {
		set use_8_bits_out		"USE_8_BITS_OUT:1"
	} elseif { $output_type	== "9-bit RGB" } {
		set use_9_bits_out		"USE_9_BITS_OUT:1"
	} elseif { $output_type	== "16-bit RGB" } {
		set use_16_bits_out		"USE_16_BITS_OUT:1"
	} elseif { $output_type	== "24-bit RGB" } {
		set use_24_bits_out		"USE_24_BITS_OUT:1"
	} elseif { $output_type	== "30-bit RGB" } {
		set use_30_bits_out		"USE_30_BITS_OUT:1"
	} elseif { $output_type	== "12-bit RGBA" } {
		set use_A_12_bits_out	"USE_A_12_BITS_OUT:1"
	} elseif { $output_type	== "16-bit RGBA" } {
		set use_A_16_bits_out	"USE_A_16_BITS_OUT:1"
	} elseif { $output_type	== "32-bit RGBA" } {
		set use_A_32_bits_out	"USE_A_32_BITS_OUT:1"
	} elseif { $output_type	== "40-bit RGBA" } {
		set use_A_40_bits_out	"USE_A_40_BITS_OUT:1"
	}
	set output_sections "$use_bw_out;$use_gray_out;$use_8_bits_out;$use_9_bits_out;$use_16_bits_out;$use_24_bits_out;$use_30_bits_out;$use_A_12_bits_out;$use_A_16_bits_out;$use_A_32_bits_out;$use_A_40_bits_out"

	# set arguments
	set params "$input_dw;$output_dw;$input_ew;$output_ew;$alpha_value"
	set sections "$input_sections;$output_sections"

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_rgb_resampler.v" "altera_up_avalon_video_rgb_resampler" $dest_name $params $sections
}
# | 
# +-----------------------------------


## Add documentation links for user guide and/or release notes
add_documentation_link "User Guide" file:///ip/altera/university_program/audio_video/video/doc/Video.pdf
add_documentation_link "Release Notes" https://documentation.altera.com/#/link/hco1421698042087/hco1421698013408