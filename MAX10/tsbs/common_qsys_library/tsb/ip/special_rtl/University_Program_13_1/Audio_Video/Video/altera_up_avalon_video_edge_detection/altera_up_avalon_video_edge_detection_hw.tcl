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
# | module altera_up_avalon_video_edge_detection
# | 
set_module_property DESCRIPTION "Video In Edge Detection for DE-series Boards"
set_module_property NAME altera_up_avalon_video_edge_detection
set_module_property VERSION $aup_version
set_module_property GROUP "University Program/Audio & Video/Video"
set_module_property AUTHOR "Altera University Program"
set_module_property DISPLAY_NAME "Edge Detection"
set_module_property DATASHEET_URL "[pwd]/../doc/Video.pdf"
#set_module_property TOP_LEVEL_HDL_FILE Altera_UP_Avalon_Video_Edge_Detection.v
#set_module_property TOP_LEVEL_HDL_MODULE Altera_UP_Avalon_Video_Edge_Detection
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
#add_file Altera_UP_Avalon_Video_Edge_Detection.v {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_gaussian_smoothing_filter.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_sobel_operator.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_nonmaximum_suppression.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_hysteresis.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_pixel_info_shift_register.v" {SYNTHESIS SIMULATION}
add_file "hdl/altera_up_edge_detection_data_shift_register.v" {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter width natural "720"
set_parameter_property width DISPLAY_NAME "Width (# of pixels)"
#set_parameter_property width GROUP "Input Video Format"
set_parameter_property width UNITS None
set_parameter_property width AFFECTS_ELABORATION true
set_parameter_property width AFFECTS_GENERATION true
set_parameter_property width VISIBLE true
set_parameter_property width ENABLED true

add_parameter intensity integer 1 
set_parameter_property intensity DISPLAY_NAME "Edge Intensity"
set_parameter_property intensity UNITS None
set_parameter_property intensity AFFECTS_ELABORATION true
set_parameter_property intensity AFFECTS_GENERATION true
set_parameter_property intensity ALLOWED_RANGES {1 2}
set_parameter_property intensity VISIBLE true
set_parameter_property intensity ENABLED true
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
# | connection point avalon_edge_detection_sink
# | 
add_interface avalon_edge_detection_sink avalon_streaming end 
set_interface_property avalon_edge_detection_sink associatedClock clk
set_interface_property avalon_edge_detection_sink associatedReset reset
set_interface_property avalon_edge_detection_sink dataBitsPerSymbol 8
set_interface_property avalon_edge_detection_sink errorDescriptor ""
set_interface_property avalon_edge_detection_sink maxChannel 0
set_interface_property avalon_edge_detection_sink readyLatency 0
set_interface_property avalon_edge_detection_sink symbolsPerBeat 1

add_interface_port avalon_edge_detection_sink in_data data Input 8
add_interface_port avalon_edge_detection_sink in_startofpacket startofpacket Input 1
add_interface_port avalon_edge_detection_sink in_endofpacket endofpacket Input 1
#add_interface_port avalon_edge_detection_sink in_empty empty Input 1
add_interface_port avalon_edge_detection_sink in_valid valid Input 1
add_interface_port avalon_edge_detection_sink in_ready ready Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_edge_detection_source
# | 
add_interface avalon_edge_detection_source avalon_streaming start 
set_interface_property avalon_edge_detection_source associatedClock clk
set_interface_property avalon_edge_detection_source associatedReset reset
set_interface_property avalon_edge_detection_source dataBitsPerSymbol 8
set_interface_property avalon_edge_detection_source errorDescriptor ""
set_interface_property avalon_edge_detection_source maxChannel 0
set_interface_property avalon_edge_detection_source readyLatency 0
set_interface_property avalon_edge_detection_source symbolsPerBeat 1

add_interface_port avalon_edge_detection_source out_ready ready Input 1
add_interface_port avalon_edge_detection_source out_data data Output 8
add_interface_port avalon_edge_detection_source out_startofpacket startofpacket Output 1
add_interface_port avalon_edge_detection_source out_endofpacket endofpacket Output 1
#add_interface_port avalon_edge_detection_source out_empty empty Output 1
add_interface_port avalon_edge_detection_source out_valid valid Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | Generation function
# | 
proc generate {} {
	send_message info "Starting Generation of Video In Edge Detection"

	# get parameter values
	set width [ get_parameter_value "width" ]
	set intensity [ get_parameter_value "intensity" ]

	set width_param "WIDTH:$width"

	# set section values
	if { $intensity == 2 } {
		set use_double_intensity "USE_DOUBLE_INTENSITY:1"
	} else {
		set use_double_intensity "USE_DOUBLE_INTENSITY:0"
	}

	# set arguments
	set params "$width_param"
	set sections "$use_double_intensity"

	# get generation settings
#	set dest_language	[ get_generation_property HDL_LANGUAGE ]
	set dest_dir 		[ get_generation_property OUTPUT_DIRECTORY ]
	set dest_name		[ get_generation_property OUTPUT_NAME ]
	
	add_file "$dest_dir$dest_name.v" {SYNTHESIS SIMULATION}
	# add_file "$dest_dir/altera_up_edge_detection_gaussian_smoothing_filter.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_edge_detection_sobel_operator.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_edge_detection_nonmaximum_suppression.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_edge_detection_hysteresis.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_edge_detection_pixel_info_shift_register.v" SYNTHESIS
	# add_file "$dest_dir/altera_up_edge_detection_data_shift_register.v" SYNTHESIS

	# Generate HDL
	alt_up_generate "$dest_dir$dest_name.v" "hdl/altera_up_avalon_video_edge_detection.v" "altera_up_avalon_video_edge_detection" $dest_name $params $sections
	# file copy -force "hdl/altera_up_edge_detection_gaussian_smoothing_filter.v" $dest_dir
	# file copy -force "hdl/altera_up_edge_detection_sobel_operator.v" $dest_dir
	# file copy -force "hdl/altera_up_edge_detection_nonmaximum_suppression.v" $dest_dir
	# file copy -force "hdl/altera_up_edge_detection_hysteresis.v" $dest_dir
	# file copy -force "hdl/altera_up_edge_detection_pixel_info_shift_register.v" $dest_dir
	# file copy -force "hdl/altera_up_edge_detection_data_shift_register.v" $dest_dir
}
# | 
# +-----------------------------------

