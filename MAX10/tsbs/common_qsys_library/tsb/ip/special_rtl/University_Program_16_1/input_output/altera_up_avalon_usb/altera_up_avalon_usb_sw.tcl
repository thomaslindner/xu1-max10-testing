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


# THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THIS FILE OR THE USE OR OTHER DEALINGS
# IN THIS FILE.

# TCL File Generated by Altera University Program
# DO NOT MODIFY

set aup_version 16.1

# Create a new driver - this name must be different than the 
# hardware component name
create_driver up_avalon_usb_driver

# Associate it with some hardware
set_sw_property hw_class_name altera_up_avalon_usb

# The version of this driver
set_sw_property version $aup_version

# This driver is proclaimed to be compatible with 'component'
# as old as version "13.0". The component hardware version is set in the 
# _hw.tcl file - If the hardware component  version number is not equal 
# or greater than the min_compatable_hw_version number, the driver 
# source files will not be copied over to the BSP driver directory
set_sw_property min_compatible_hw_version 14.0

# Initialize the driver in alt_sys_init()
set_sw_property auto_initialize true

# Location in generated BSP that sources will be copied into
set_sw_property bsp_subdirectory drivers

#
# Source file listings...
#

# C/C++ source files
add_sw_property c_source HAL/src/altera_up_avalon_usb.c
add_sw_property c_source HAL/src/altera_up_avalon_usb_high_level_driver.c
add_sw_property c_source HAL/src/altera_up_avalon_usb_low_level_driver.c
add_sw_property c_source HAL/src/altera_up_avalon_usb_mouse_driver.c
add_sw_property c_source HAL/src/altera_up_avalon_usb_ptd.c

# Include files
add_sw_property include_source HAL/inc/altera_up_avalon_usb.h
add_sw_property include_source HAL/inc/altera_up_avalon_usb_high_level_driver.h
add_sw_property include_source HAL/inc/altera_up_avalon_usb_low_level_driver.h
add_sw_property include_source HAL/inc/altera_up_avalon_usb_mouse_driver.h
add_sw_property include_source HAL/inc/altera_up_avalon_usb_ptd.h
add_sw_property include_source HAL/inc/altera_up_avalon_usb_regs.h

# This driver supports HAL type
add_sw_property supported_bsp_type HAL

# End of file

