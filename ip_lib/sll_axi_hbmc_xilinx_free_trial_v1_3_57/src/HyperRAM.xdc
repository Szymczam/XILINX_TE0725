
#
# FPGA Pin assignment - Trenz TE0725 - 015 - 1C
#

set_property PACKAGE_PIN A13 [get_ports HB_CLK0_0]
set_property PACKAGE_PIN A14 [get_ports HB_CLK0n_0]

set_property PACKAGE_PIN E17 [get_ports {HB_dq_0[0]}]
set_property PACKAGE_PIN B17 [get_ports {HB_dq_0[1]}]
set_property PACKAGE_PIN F18 [get_ports {HB_dq_0[2]}]
set_property PACKAGE_PIN F16 [get_ports {HB_dq_0[3]}]
set_property PACKAGE_PIN G17 [get_ports {HB_dq_0[4]}]
set_property PACKAGE_PIN D18 [get_ports {HB_dq_0[5]}]
set_property PACKAGE_PIN B18 [get_ports {HB_dq_0[6]}]
set_property PACKAGE_PIN A16 [get_ports {HB_dq_0[7]}]


set_property PACKAGE_PIN E18 [get_ports HB_RWDS_0]

set_property PACKAGE_PIN D17 [get_ports HB_CS1n_0]
set_property PACKAGE_PIN J17 [get_ports HB_RSTn_0]

#set_property PACKAGE_PIN A18 [get_ports HB_CS0n_0 ]
#set_property PACKAGE_PIN J18 [get_ports HB_INTn_0 ]
#set_property PACKAGE_PIN C17 [get_ports HB_RSTOn_0]


#
# FPGA Pin Voltage assignment 
#
set_property IOSTANDARD LVCMOS18 [get_ports HB_CLK0_0]
set_property IOSTANDARD LVCMOS18 [get_ports HB_CLK0n_0]
set_property IOSTANDARD LVCMOS18 [get_ports {HB_dq_0[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports HB_CS1n_0]
set_property IOSTANDARD LVCMOS18 [get_ports HB_RSTn_0]
set_property IOSTANDARD LVCMOS18 [get_ports HB_RWDS_0]

#set_property IOSTANDARD LVCMOS18 [get_ports HB_CS0n_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_INTn_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_RSTOn_0]

#set_property PULLUP true [get_ports HB_RSTOn_0]
#set_property PULLUP true [get_ports HB_INTn_0]

#
#Hyperbus Clock - change according to clk pin on PLL
#
create_generated_clock -name clk_0   -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name clk_90  -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name clk_180 -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT2]

#
#100Mhz clock freqeuncy - change accordingly
#
set hbus_freq_ns   10

set dqs_in_min_dly -0.5
set dqs_in_max_dly  0.5

set HB_dq_ports    [get_ports HB_dq_0[*]]

#
#Create RDS clock and RDS virtual clock
#
create_clock -period $hbus_freq_ns -name rwds_clk      [get_ports HB_RWDS_0]
create_clock -period $hbus_freq_ns -name virt_rwds_clk 

#
#Input Delay Constraint -  HB_RWDS-HB_DQ 
#
set_input_delay -clock [get_clocks virt_rwds_clk]             -max ${dqs_in_max_dly} ${HB_dq_ports}
set_input_delay -clock [get_clocks virt_rwds_clk] -clock_fall -max ${dqs_in_max_dly} ${HB_dq_ports} -add_delay

set_input_delay -clock [get_clocks virt_rwds_clk]             -min ${dqs_in_min_dly} ${HB_dq_ports} -add_delay
set_input_delay -clock [get_clocks virt_rwds_clk] -clock_fall -min ${dqs_in_min_dly} ${HB_dq_ports} -add_delay

set_multicycle_path -setup -end -rise_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] 0
set_multicycle_path -setup -end -fall_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] 0

set_false_path  -fall_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] -setup
set_false_path  -rise_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] -setup
set_false_path  -fall_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] -hold
set_false_path  -rise_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] -hold

set_false_path -from [get_clocks clk_0] -to [get_clocks rwds_clk]
set_false_path -from [get_clocks rwds_clk] -to [get_clocks clk_0]

#
#Output Delay Constraint -  HB_CLK0-HB_DQ 
#

create_generated_clock -name HB_CLK0_0 -source [get_pins */*/*/U_IO/U_CLK0/dq_idx_[0].ODDR_inst/C] -multiply_by 1 -invert [get_ports HB_CLK0_0]

set_output_delay -clock [get_clocks HB_CLK0_0] -min -1.000 ${HB_dq_ports}
set_output_delay -clock [get_clocks HB_CLK0_0] -max  1.000 ${HB_dq_ports}
set_output_delay -clock [get_clocks HB_CLK0_0] -min -1.000 ${HB_dq_ports} -clock_fall -add_delay
set_output_delay -clock [get_clocks HB_CLK0_0] -max  1.000 ${HB_dq_ports} -clock_fall -add_delay


set_false_path -from [get_pins */*/*/U_HBC/*/dq_io_tri_reg/C] -to ${HB_dq_ports}

set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_1_reg/CLR]
set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_2_reg/CLR]
set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_3_reg/CLR]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

