create_driver overflow_packet_discard_driver

set_sw_property hw_class_name overflow_packet_discard

set_sw_property version 1.0

set_sw_property min_compatible_hw_version 1.0

set_sw_property auto_initialize false

set_sw_property bsp_subdirectory drivers

add_sw_property c_source HAL/src/overflow_packet_discard.c

add_sw_property include_source HAL/inc/overflow_packet_discard.h
add_sw_property include_source inc/overflow_packet_discard_regs.h

add_sw_property supported_bsp_type HAL
add_sw_property supported_bsp_type UCOSII
