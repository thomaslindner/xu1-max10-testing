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



global env;

# RUN_SCRIPT_PARAMETERS
set QSYS_SIMDIR ../tse_mac_testbench_sim
set dut_wave_do tse_mac_testbench_wave.do
set testbench_model_dir ../models

set TOP_LEVEL_NAME tb

source $QSYS_SIMDIR/mentor/msim_setup.tcl

# Alias from msim_setup.tcl
# Compile device library files
dev_com 

# Compile the design files in correct order
com

# Compile testbench
vcom -work work -93 $testbench_model_dir/*.vhd
vcom -work work -93 *.vhd

# Elaborate top level design
elab_debug

do $dut_wave_do

# Run the simulation
run -all
