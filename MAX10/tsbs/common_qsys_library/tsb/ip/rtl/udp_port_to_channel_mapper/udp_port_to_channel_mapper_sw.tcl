create_driver udp_port_to_channel_mapper_driver

set_sw_property hw_class_name udp_port_to_channel_mapper

set_sw_property version 1.0

set_sw_property min_compatible_hw_version 1.0

set_sw_property auto_initialize false

set_sw_property bsp_subdirectory drivers

add_sw_property c_source HAL/src/udp_port_to_channel_mapper.c

add_sw_property include_source HAL/inc/udp_port_to_channel_mapper.h
add_sw_property include_source inc/udp_port_to_channel_mapper_regs.h

add_sw_property supported_bsp_type HAL
add_sw_property supported_bsp_type UCOSII
