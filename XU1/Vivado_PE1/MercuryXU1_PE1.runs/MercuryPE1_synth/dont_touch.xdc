# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: C:/gitlab/NuPRISM/mercury_xu1_pmt/src/MercuryXU1_PE1.xdc

# Block Designs: bd/MercuryXU1/MercuryXU1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1 || ORIG_REF_NAME==MercuryXU1} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_0/MercuryXU1_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_0 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_xbar_0/MercuryXU1_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_xbar_0 || ORIG_REF_NAME==MercuryXU1_xbar_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_axi_interconnect_0_0/MercuryXU1_axi_interconnect_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_interconnect_0_0 || ORIG_REF_NAME==MercuryXU1_axi_interconnect_0_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_proc_sys_reset_0_0/MercuryXU1_proc_sys_reset_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_proc_sys_reset_0_0 || ORIG_REF_NAME==MercuryXU1_proc_sys_reset_0_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_system_management_wiz_0_0/MercuryXU1_system_management_wiz_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_system_management_wiz_0_0 || ORIG_REF_NAME==MercuryXU1_system_management_wiz_0_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_zynq_ultra_ps_e_0_0/MercuryXU1_zynq_ultra_ps_e_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_zynq_ultra_ps_e_0_0 || ORIG_REF_NAME==MercuryXU1_zynq_ultra_ps_e_0_0} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_1/MercuryXU1_axi_gpio_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_1 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_1} -quiet] -quiet

# IP: bd/MercuryXU1/ip/MercuryXU1_auto_pc_0/MercuryXU1_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==MercuryXU1_auto_pc_0 || ORIG_REF_NAME==MercuryXU1_auto_pc_0} -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_0/MercuryXU1_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_0 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_0/MercuryXU1_axi_gpio_0_0_ooc.xdc

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_0/MercuryXU1_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_0 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_proc_sys_reset_0_0/MercuryXU1_proc_sys_reset_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_proc_sys_reset_0_0 || ORIG_REF_NAME==MercuryXU1_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_proc_sys_reset_0_0/MercuryXU1_proc_sys_reset_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_proc_sys_reset_0_0 || ORIG_REF_NAME==MercuryXU1_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_system_management_wiz_0_0/MercuryXU1_system_management_wiz_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_system_management_wiz_0_0 || ORIG_REF_NAME==MercuryXU1_system_management_wiz_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_system_management_wiz_0_0/MercuryXU1_system_management_wiz_0_0_ooc.xdc

# XDC: bd/MercuryXU1/ip/MercuryXU1_system_management_wiz_0_0/MercuryXU1_system_management_wiz_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_system_management_wiz_0_0 || ORIG_REF_NAME==MercuryXU1_system_management_wiz_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_zynq_ultra_ps_e_0_0/MercuryXU1_zynq_ultra_ps_e_0_0_ooc.xdc

# XDC: bd/MercuryXU1/ip/MercuryXU1_zynq_ultra_ps_e_0_0/MercuryXU1_zynq_ultra_ps_e_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_zynq_ultra_ps_e_0_0 || ORIG_REF_NAME==MercuryXU1_zynq_ultra_ps_e_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_1/MercuryXU1_axi_gpio_0_1_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_1 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_1/MercuryXU1_axi_gpio_0_1_ooc.xdc

# XDC: bd/MercuryXU1/ip/MercuryXU1_axi_gpio_0_1/MercuryXU1_axi_gpio_0_1.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==MercuryXU1_axi_gpio_0_1 || ORIG_REF_NAME==MercuryXU1_axi_gpio_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/MercuryXU1/ip/MercuryXU1_auto_pc_0/MercuryXU1_auto_pc_0_ooc.xdc

# XDC: bd/MercuryXU1/MercuryXU1_ooc.xdc
