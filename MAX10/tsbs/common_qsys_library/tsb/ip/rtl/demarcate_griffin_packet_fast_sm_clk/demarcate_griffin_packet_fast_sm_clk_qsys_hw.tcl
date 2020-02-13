# TCL File Generated by Component Editor 12.1sp1
# Fri Oct 11 13:53:51 PDT 2013
# DO NOT MODIFY


# 
# demarcate_griffin_packet_fast_sm_clk_qsys "Demarcate Griffin Packet Fast SM Clk Avalon-ST" v1.0
# Yair Linn 2013.10.11.13:53:51
# 
# 

# 
# request TCL package from ACDS 12.1
# 
package require -exact qsys 12.1


# 
# module demarcate_griffin_packet_fast_sm_clk_qsys
# 
set_module_property NAME demarcate_griffin_packet_fast_sm_clk_qsys
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Yair Linn"
set_module_property DISPLAY_NAME "Demarcate Griffin Packet Fast SM Clk Avalon-ST"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL demarcate_griffin_packet_fast_sm_clk
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file demarcate_griffin_packet_fast_sm_clk.sv SYSTEM_VERILOG PATH demarcate_griffin_packet_fast_sm_clk.sv


# 
# parameters
# 
add_parameter SOP_Marker STD_LOGIC_VECTOR 134217728
set_parameter_property SOP_Marker DEFAULT_VALUE 134217728
set_parameter_property SOP_Marker DISPLAY_NAME SOP_Marker
set_parameter_property SOP_Marker TYPE STD_LOGIC_VECTOR
set_parameter_property SOP_Marker UNITS None
set_parameter_property SOP_Marker ALLOWED_RANGES 0:17179869183
set_parameter_property SOP_Marker HDL_PARAMETER true
add_parameter SOP_Mask STD_LOGIC_VECTOR 4278190080
set_parameter_property SOP_Mask DEFAULT_VALUE 4278190080
set_parameter_property SOP_Mask DISPLAY_NAME SOP_Mask
set_parameter_property SOP_Mask TYPE STD_LOGIC_VECTOR
set_parameter_property SOP_Mask UNITS None
set_parameter_property SOP_Mask ALLOWED_RANGES 0:17179869183
set_parameter_property SOP_Mask HDL_PARAMETER true
add_parameter EOP_Marker STD_LOGIC_VECTOR 234881024
set_parameter_property EOP_Marker DEFAULT_VALUE 234881024
set_parameter_property EOP_Marker DISPLAY_NAME EOP_Marker
set_parameter_property EOP_Marker TYPE STD_LOGIC_VECTOR
set_parameter_property EOP_Marker UNITS None
set_parameter_property EOP_Marker ALLOWED_RANGES 0:17179869183
set_parameter_property EOP_Marker HDL_PARAMETER true
add_parameter EOP_Mask STD_LOGIC_VECTOR 4278190080
set_parameter_property EOP_Mask DEFAULT_VALUE 4278190080
set_parameter_property EOP_Mask DISPLAY_NAME EOP_Mask
set_parameter_property EOP_Mask TYPE STD_LOGIC_VECTOR
set_parameter_property EOP_Mask UNITS None
set_parameter_property EOP_Mask ALLOWED_RANGES 0:17179869183
set_parameter_property EOP_Mask HDL_PARAMETER true
add_parameter numbits INTEGER 32
set_parameter_property numbits DEFAULT_VALUE 32
set_parameter_property numbits DISPLAY_NAME numbits
set_parameter_property numbits TYPE INTEGER
set_parameter_property numbits UNITS None
set_parameter_property numbits ALLOWED_RANGES -2147483648:2147483647
set_parameter_property numbits HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avalon_streaming_source
# 
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock_sink_1
set_interface_property avalon_streaming_source associatedReset reset_sink
set_interface_property avalon_streaming_source dataBitsPerSymbol 8
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 0
set_interface_property avalon_streaming_source ENABLED true

add_interface_port avalon_streaming_source outdata data Output numbits
add_interface_port avalon_streaming_source valid valid Output 1
add_interface_port avalon_streaming_source startofpacket startofpacket Output 1
add_interface_port avalon_streaming_source endofpacket endofpacket Output 1
add_interface_port avalon_streaming_source empty empty Output 2
add_interface_port avalon_streaming_source ready ready Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true

add_interface_port conduit_end indata export Input numbits
add_interface_port conduit_end transpose_input export Input 1
add_interface_port conduit_end transpose_output export Input 1
add_interface_port conduit_end enable export Input 1
add_interface_port conduit_end found_sop export Output 1
add_interface_port conduit_end found_eop export Output 1
add_interface_port conduit_end found_sop_raw export Output 1
add_interface_port conduit_end found_eop_raw export Output 1
add_interface_port conduit_end found_sop_synced export Output 1
add_interface_port conduit_end found_eop_synced export Output 1
add_interface_port conduit_end state export Output 12
add_interface_port conduit_end possibly_transposed_indata export Output numbits
add_interface_port conduit_end actual_possibly_transposed_indata export Output numbits
add_interface_port conduit_end packet_byte_count export Output 16
add_interface_port conduit_end select_inserted_data export Output 1
add_interface_port conduit_end inserted_data export Output numbits
add_interface_port conduit_end actual_output_data export Output numbits
add_interface_port conduit_end enable_output_data export Output 1
add_interface_port conduit_end new_packet_work_clk_has_arrived export Output 1
add_interface_port conduit_end fixed_header_data export Input numbits


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true

add_interface_port clock_sink packet_work_clk clk Input 1


# 
# connection point clock_sink_1
# 
add_interface clock_sink_1 clock end
set_interface_property clock_sink_1 clockRate 0
set_interface_property clock_sink_1 ENABLED true

add_interface_port clock_sink_1 fast_sm_clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink_1
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true

add_interface_port reset_sink reset reset Input 1

