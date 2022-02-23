
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/sll_hbmc_axi_top_v1_2.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "g_is_hyperflash_present" -widget comboBox
  ipgui::add_param $IPINST -name "g_is_hyperRAM_present" -widget comboBox
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "g_device_family" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "g_hyperbus_freq_in_mhz" -parent ${Page_0} -widget comboBox
  set g_iavs0_burstcount_width [ipgui::add_param $IPINST -name "g_iavs0_burstcount_width" -parent ${Page_0}]
  set_property tooltip {AXI Burstcount Width} ${g_iavs0_burstcount_width}
  ipgui::add_param $IPINST -name "g_iavs0_id_width" -parent ${Page_0}
  set g_rds_delay_adj [ipgui::add_param $IPINST -name "g_rds_delay_adj" -parent ${Page_0}]
  set_property tooltip {Delay Adjustment Control on  Rds Clock} ${g_rds_delay_adj}
  ipgui::add_param $IPINST -name "g_same_iavs_hyperbus_clk" -parent ${Page_0} -widget comboBox

  set g_num_chipselect [ipgui::add_param $IPINST -name "g_num_chipselect" -widget comboBox]
  set_property tooltip {Num of Chipselect signals} ${g_num_chipselect}

  ipgui::add_static_text $IPINST -has_hypertext true -display_border true -name ICT_STATIC_TEXT -text {<html><h3><font color=red>INFO: By Using this HBMC IP, You acknowledge that You have read the accompanying License and Confidentiality Agreement, understand it, accept it and agree to be bound by all its Terms. <br> It is not intended for use in production designs.<br> <h3></html>}

}

proc update_PARAM_VALUE.HYPERFLASH_HIGHADDR { PARAM_VALUE.HYPERFLASH_HIGHADDR PARAM_VALUE.g_is_hyperflash_present } {
	# Procedure called to update HYPERFLASH_HIGHADDR when any of the dependent parameters in the arguments change
	
	set HYPERFLASH_HIGHADDR ${PARAM_VALUE.HYPERFLASH_HIGHADDR}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set_property value [gen_USERPARAMETER_HYPERFLASH_HIGHADDR_VALUE $values(g_is_hyperflash_present)] $HYPERFLASH_HIGHADDR
}

proc validate_PARAM_VALUE.HYPERFLASH_HIGHADDR { PARAM_VALUE.HYPERFLASH_HIGHADDR } {
	# Procedure called to validate HYPERFLASH_HIGHADDR
	return true
}

proc update_PARAM_VALUE.HYPERRAM_BASEADDR { PARAM_VALUE.HYPERRAM_BASEADDR PARAM_VALUE.g_is_hyperflash_present } {
	# Procedure called to update HYPERRAM_BASEADDR when any of the dependent parameters in the arguments change
	
	set HYPERRAM_BASEADDR ${PARAM_VALUE.HYPERRAM_BASEADDR}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set_property value [gen_USERPARAMETER_HYPERRAM_BASEADDR_VALUE $values(g_is_hyperflash_present)] $HYPERRAM_BASEADDR
}

proc validate_PARAM_VALUE.HYPERRAM_BASEADDR { PARAM_VALUE.HYPERRAM_BASEADDR } {
	# Procedure called to validate HYPERRAM_BASEADDR
	return true
}

proc update_PARAM_VALUE.HYPERRAM_HIGHADDR { PARAM_VALUE.HYPERRAM_HIGHADDR PARAM_VALUE.g_is_hyperflash_present PARAM_VALUE.g_is_hyperRAM_present } {
	# Procedure called to update HYPERRAM_HIGHADDR when any of the dependent parameters in the arguments change
	
	set HYPERRAM_HIGHADDR ${PARAM_VALUE.HYPERRAM_HIGHADDR}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set g_is_hyperRAM_present ${PARAM_VALUE.g_is_hyperRAM_present}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set values(g_is_hyperRAM_present) [get_property value $g_is_hyperRAM_present]
	set_property value [gen_USERPARAMETER_HYPERRAM_HIGHADDR_VALUE $values(g_is_hyperflash_present) $values(g_is_hyperRAM_present)] $HYPERRAM_HIGHADDR
}

proc validate_PARAM_VALUE.HYPERRAM_HIGHADDR { PARAM_VALUE.HYPERRAM_HIGHADDR } {
	# Procedure called to validate HYPERRAM_HIGHADDR
	return true
}

proc update_PARAM_VALUE.g_dev0_config { PARAM_VALUE.g_dev0_config PARAM_VALUE.g_is_hyperflash_present PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to update g_dev0_config when any of the dependent parameters in the arguments change
	
	set g_dev0_config ${PARAM_VALUE.g_dev0_config}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set g_hyperbus_freq_in_mhz ${PARAM_VALUE.g_hyperbus_freq_in_mhz}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set values(g_hyperbus_freq_in_mhz) [get_property value $g_hyperbus_freq_in_mhz]
	set_property value [gen_USERPARAMETER_g_dev0_config_VALUE $values(g_is_hyperflash_present) $values(g_hyperbus_freq_in_mhz)] $g_dev0_config
}

proc validate_PARAM_VALUE.g_dev0_config { PARAM_VALUE.g_dev0_config } {
	# Procedure called to validate g_dev0_config
	return true
}

proc update_PARAM_VALUE.g_dev0_timing { PARAM_VALUE.g_dev0_timing PARAM_VALUE.g_is_hyperflash_present PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to update g_dev0_timing when any of the dependent parameters in the arguments change
	
	set g_dev0_timing ${PARAM_VALUE.g_dev0_timing}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set g_hyperbus_freq_in_mhz ${PARAM_VALUE.g_hyperbus_freq_in_mhz}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set values(g_hyperbus_freq_in_mhz) [get_property value $g_hyperbus_freq_in_mhz]
	set_property value [gen_USERPARAMETER_g_dev0_timing_VALUE $values(g_is_hyperflash_present) $values(g_hyperbus_freq_in_mhz)] $g_dev0_timing
}

proc validate_PARAM_VALUE.g_dev0_timing { PARAM_VALUE.g_dev0_timing } {
	# Procedure called to validate g_dev0_timing
	return true
}

proc update_PARAM_VALUE.g_dev1_config { PARAM_VALUE.g_dev1_config PARAM_VALUE.g_is_hyperRAM_present PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to update g_dev1_config when any of the dependent parameters in the arguments change
	
	set g_dev1_config ${PARAM_VALUE.g_dev1_config}
	set g_is_hyperRAM_present ${PARAM_VALUE.g_is_hyperRAM_present}
	set g_hyperbus_freq_in_mhz ${PARAM_VALUE.g_hyperbus_freq_in_mhz}
	set values(g_is_hyperRAM_present) [get_property value $g_is_hyperRAM_present]
	set values(g_hyperbus_freq_in_mhz) [get_property value $g_hyperbus_freq_in_mhz]
	set_property value [gen_USERPARAMETER_g_dev1_config_VALUE $values(g_is_hyperRAM_present) $values(g_hyperbus_freq_in_mhz)] $g_dev1_config
}

proc validate_PARAM_VALUE.g_dev1_config { PARAM_VALUE.g_dev1_config } {
	# Procedure called to validate g_dev1_config
	return true
}

proc update_PARAM_VALUE.g_dev1_timing { PARAM_VALUE.g_dev1_timing PARAM_VALUE.g_is_hyperRAM_present PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to update g_dev1_timing when any of the dependent parameters in the arguments change
	
	set g_dev1_timing ${PARAM_VALUE.g_dev1_timing}
	set g_is_hyperRAM_present ${PARAM_VALUE.g_is_hyperRAM_present}
	set g_hyperbus_freq_in_mhz ${PARAM_VALUE.g_hyperbus_freq_in_mhz}
	set values(g_is_hyperRAM_present) [get_property value $g_is_hyperRAM_present]
	set values(g_hyperbus_freq_in_mhz) [get_property value $g_hyperbus_freq_in_mhz]
	set_property value [gen_USERPARAMETER_g_dev1_timing_VALUE $values(g_is_hyperRAM_present) $values(g_hyperbus_freq_in_mhz)] $g_dev1_timing
}

proc validate_PARAM_VALUE.g_dev1_timing { PARAM_VALUE.g_dev1_timing } {
	# Procedure called to validate g_dev1_timing
	return true
}

proc update_PARAM_VALUE.g_iavs0_addr_width { PARAM_VALUE.g_iavs0_addr_width PARAM_VALUE.g_is_hyperflash_present PARAM_VALUE.g_is_hyperRAM_present } {
	# Procedure called to update g_iavs0_addr_width when any of the dependent parameters in the arguments change
	
	set g_iavs0_addr_width ${PARAM_VALUE.g_iavs0_addr_width}
	set g_is_hyperflash_present ${PARAM_VALUE.g_is_hyperflash_present}
	set g_is_hyperRAM_present ${PARAM_VALUE.g_is_hyperRAM_present}
	set values(g_is_hyperflash_present) [get_property value $g_is_hyperflash_present]
	set values(g_is_hyperRAM_present) [get_property value $g_is_hyperRAM_present]
	set_property value [gen_USERPARAMETER_g_iavs0_addr_width_VALUE $values(g_is_hyperflash_present) $values(g_is_hyperRAM_present)] $g_iavs0_addr_width
}

proc validate_PARAM_VALUE.g_iavs0_addr_width { PARAM_VALUE.g_iavs0_addr_width } {
	# Procedure called to validate g_iavs0_addr_width
	return true
}

proc update_PARAM_VALUE.HYPERFLASH_BASEADDR { PARAM_VALUE.HYPERFLASH_BASEADDR } {
	# Procedure called to update HYPERFLASH_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HYPERFLASH_BASEADDR { PARAM_VALUE.HYPERFLASH_BASEADDR } {
	# Procedure called to validate HYPERFLASH_BASEADDR
	return true
}

proc update_PARAM_VALUE.g_config_rd_buffer_as_sram { PARAM_VALUE.g_config_rd_buffer_as_sram } {
	# Procedure called to update g_config_rd_buffer_as_sram when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_config_rd_buffer_as_sram { PARAM_VALUE.g_config_rd_buffer_as_sram } {
	# Procedure called to validate g_config_rd_buffer_as_sram
	return true
}

proc update_PARAM_VALUE.g_config_wr_buffer_as_sram { PARAM_VALUE.g_config_wr_buffer_as_sram } {
	# Procedure called to update g_config_wr_buffer_as_sram when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_config_wr_buffer_as_sram { PARAM_VALUE.g_config_wr_buffer_as_sram } {
	# Procedure called to validate g_config_wr_buffer_as_sram
	return true
}

proc update_PARAM_VALUE.g_device_family { PARAM_VALUE.g_device_family } {
	# Procedure called to update g_device_family when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_device_family { PARAM_VALUE.g_device_family } {
	# Procedure called to validate g_device_family
	return true
}

proc update_PARAM_VALUE.g_dqin_rdata_width { PARAM_VALUE.g_dqin_rdata_width } {
	# Procedure called to update g_dqin_rdata_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_dqin_rdata_width { PARAM_VALUE.g_dqin_rdata_width } {
	# Procedure called to validate g_dqin_rdata_width
	return true
}

proc update_PARAM_VALUE.g_hyperbus_freq_in_mhz { PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to update g_hyperbus_freq_in_mhz when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_hyperbus_freq_in_mhz { PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to validate g_hyperbus_freq_in_mhz
	return true
}

proc update_PARAM_VALUE.g_iavs0_av_numsymbols { PARAM_VALUE.g_iavs0_av_numsymbols } {
	# Procedure called to update g_iavs0_av_numsymbols when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_av_numsymbols { PARAM_VALUE.g_iavs0_av_numsymbols } {
	# Procedure called to validate g_iavs0_av_numsymbols
	return true
}

proc update_PARAM_VALUE.g_iavs0_burstcount_width { PARAM_VALUE.g_iavs0_burstcount_width } {
	# Procedure called to update g_iavs0_burstcount_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_burstcount_width { PARAM_VALUE.g_iavs0_burstcount_width } {
	# Procedure called to validate g_iavs0_burstcount_width
	return true
}

proc update_PARAM_VALUE.g_iavs0_burstonboundaries { PARAM_VALUE.g_iavs0_burstonboundaries } {
	# Procedure called to update g_iavs0_burstonboundaries when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_burstonboundaries { PARAM_VALUE.g_iavs0_burstonboundaries } {
	# Procedure called to validate g_iavs0_burstonboundaries
	return true
}

proc update_PARAM_VALUE.g_iavs0_data_width { PARAM_VALUE.g_iavs0_data_width } {
	# Procedure called to update g_iavs0_data_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_data_width { PARAM_VALUE.g_iavs0_data_width } {
	# Procedure called to validate g_iavs0_data_width
	return true
}

proc update_PARAM_VALUE.g_iavs0_id_width { PARAM_VALUE.g_iavs0_id_width } {
	# Procedure called to update g_iavs0_id_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_id_width { PARAM_VALUE.g_iavs0_id_width } {
	# Procedure called to validate g_iavs0_id_width
	return true
}

proc update_PARAM_VALUE.g_iavs0_linewrap_burst { PARAM_VALUE.g_iavs0_linewrap_burst } {
	# Procedure called to update g_iavs0_linewrap_burst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_linewrap_burst { PARAM_VALUE.g_iavs0_linewrap_burst } {
	# Procedure called to validate g_iavs0_linewrap_burst
	return true
}

proc update_PARAM_VALUE.g_iavs0_register_rdata { PARAM_VALUE.g_iavs0_register_rdata } {
	# Procedure called to update g_iavs0_register_rdata when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_register_rdata { PARAM_VALUE.g_iavs0_register_rdata } {
	# Procedure called to validate g_iavs0_register_rdata
	return true
}

proc update_PARAM_VALUE.g_iavs0_register_wdata { PARAM_VALUE.g_iavs0_register_wdata } {
	# Procedure called to update g_iavs0_register_wdata when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs0_register_wdata { PARAM_VALUE.g_iavs0_register_wdata } {
	# Procedure called to validate g_iavs0_register_wdata
	return true
}

proc update_PARAM_VALUE.g_iavs_freq_in_mhz { PARAM_VALUE.g_iavs_freq_in_mhz } {
	# Procedure called to update g_iavs_freq_in_mhz when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavs_freq_in_mhz { PARAM_VALUE.g_iavs_freq_in_mhz } {
	# Procedure called to validate g_iavs_freq_in_mhz
	return true
}

proc update_PARAM_VALUE.g_iavsr_addr_width { PARAM_VALUE.g_iavsr_addr_width } {
	# Procedure called to update g_iavsr_addr_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_iavsr_addr_width { PARAM_VALUE.g_iavsr_addr_width } {
	# Procedure called to validate g_iavsr_addr_width
	return true
}

proc update_PARAM_VALUE.g_include_reg_avalon { PARAM_VALUE.g_include_reg_avalon } {
	# Procedure called to update g_include_reg_avalon when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_include_reg_avalon { PARAM_VALUE.g_include_reg_avalon } {
	# Procedure called to validate g_include_reg_avalon
	return true
}

proc update_PARAM_VALUE.g_input_clk_freq_in_mhz { PARAM_VALUE.g_input_clk_freq_in_mhz } {
	# Procedure called to update g_input_clk_freq_in_mhz when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_input_clk_freq_in_mhz { PARAM_VALUE.g_input_clk_freq_in_mhz } {
	# Procedure called to validate g_input_clk_freq_in_mhz
	return true
}

proc update_PARAM_VALUE.g_is_hyperRAM_present { PARAM_VALUE.g_is_hyperRAM_present } {
	# Procedure called to update g_is_hyperRAM_present when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_is_hyperRAM_present { PARAM_VALUE.g_is_hyperRAM_present } {
	# Procedure called to validate g_is_hyperRAM_present
	return true
}

proc update_PARAM_VALUE.g_is_hyperflash_present { PARAM_VALUE.g_is_hyperflash_present } {
	# Procedure called to update g_is_hyperflash_present when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_is_hyperflash_present { PARAM_VALUE.g_is_hyperflash_present } {
	# Procedure called to validate g_is_hyperflash_present
	return true
}

proc update_PARAM_VALUE.g_num_chipselect { PARAM_VALUE.g_num_chipselect } {
	# Procedure called to update g_num_chipselect when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_num_chipselect { PARAM_VALUE.g_num_chipselect } {
	# Procedure called to validate g_num_chipselect
	return true
}

proc update_PARAM_VALUE.g_rds_delay_adj { PARAM_VALUE.g_rds_delay_adj } {
	# Procedure called to update g_rds_delay_adj when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_rds_delay_adj { PARAM_VALUE.g_rds_delay_adj } {
	# Procedure called to validate g_rds_delay_adj
	return true
}

proc update_PARAM_VALUE.g_rst_mode { PARAM_VALUE.g_rst_mode } {
	# Procedure called to update g_rst_mode when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_rst_mode { PARAM_VALUE.g_rst_mode } {
	# Procedure called to validate g_rst_mode
	return true
}

proc update_PARAM_VALUE.g_same_iavs_hyperbus_clk { PARAM_VALUE.g_same_iavs_hyperbus_clk } {
	# Procedure called to update g_same_iavs_hyperbus_clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_same_iavs_hyperbus_clk { PARAM_VALUE.g_same_iavs_hyperbus_clk } {
	# Procedure called to validate g_same_iavs_hyperbus_clk
	return true
}


proc update_MODELPARAM_VALUE.g_input_clk_freq_in_mhz { MODELPARAM_VALUE.g_input_clk_freq_in_mhz PARAM_VALUE.g_input_clk_freq_in_mhz } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_input_clk_freq_in_mhz}] ${MODELPARAM_VALUE.g_input_clk_freq_in_mhz}
}

proc update_MODELPARAM_VALUE.g_hyperbus_freq_in_mhz { MODELPARAM_VALUE.g_hyperbus_freq_in_mhz PARAM_VALUE.g_hyperbus_freq_in_mhz } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_hyperbus_freq_in_mhz}] ${MODELPARAM_VALUE.g_hyperbus_freq_in_mhz}
}

proc update_MODELPARAM_VALUE.g_iavs_freq_in_mhz { MODELPARAM_VALUE.g_iavs_freq_in_mhz PARAM_VALUE.g_iavs_freq_in_mhz } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs_freq_in_mhz}] ${MODELPARAM_VALUE.g_iavs_freq_in_mhz}
}

proc update_MODELPARAM_VALUE.g_rds_delay_adj { MODELPARAM_VALUE.g_rds_delay_adj PARAM_VALUE.g_rds_delay_adj } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_rds_delay_adj}] ${MODELPARAM_VALUE.g_rds_delay_adj}
}

proc update_MODELPARAM_VALUE.g_include_reg_avalon { MODELPARAM_VALUE.g_include_reg_avalon PARAM_VALUE.g_include_reg_avalon } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_include_reg_avalon}] ${MODELPARAM_VALUE.g_include_reg_avalon}
}

proc update_MODELPARAM_VALUE.g_iavsr_addr_width { MODELPARAM_VALUE.g_iavsr_addr_width PARAM_VALUE.g_iavsr_addr_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavsr_addr_width}] ${MODELPARAM_VALUE.g_iavsr_addr_width}
}

proc update_MODELPARAM_VALUE.g_iavs0_addr_width { MODELPARAM_VALUE.g_iavs0_addr_width PARAM_VALUE.g_iavs0_addr_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_addr_width}] ${MODELPARAM_VALUE.g_iavs0_addr_width}
}

proc update_MODELPARAM_VALUE.g_iavs0_data_width { MODELPARAM_VALUE.g_iavs0_data_width PARAM_VALUE.g_iavs0_data_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_data_width}] ${MODELPARAM_VALUE.g_iavs0_data_width}
}

proc update_MODELPARAM_VALUE.g_iavs0_av_numsymbols { MODELPARAM_VALUE.g_iavs0_av_numsymbols PARAM_VALUE.g_iavs0_av_numsymbols } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_av_numsymbols}] ${MODELPARAM_VALUE.g_iavs0_av_numsymbols}
}

proc update_MODELPARAM_VALUE.g_iavs0_linewrap_burst { MODELPARAM_VALUE.g_iavs0_linewrap_burst PARAM_VALUE.g_iavs0_linewrap_burst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_linewrap_burst}] ${MODELPARAM_VALUE.g_iavs0_linewrap_burst}
}

proc update_MODELPARAM_VALUE.g_iavs0_burstonboundaries { MODELPARAM_VALUE.g_iavs0_burstonboundaries PARAM_VALUE.g_iavs0_burstonboundaries } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_burstonboundaries}] ${MODELPARAM_VALUE.g_iavs0_burstonboundaries}
}

proc update_MODELPARAM_VALUE.g_iavs0_burstcount_width { MODELPARAM_VALUE.g_iavs0_burstcount_width PARAM_VALUE.g_iavs0_burstcount_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_burstcount_width}] ${MODELPARAM_VALUE.g_iavs0_burstcount_width}
}

proc update_MODELPARAM_VALUE.g_iavs0_register_rdata { MODELPARAM_VALUE.g_iavs0_register_rdata PARAM_VALUE.g_iavs0_register_rdata } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_register_rdata}] ${MODELPARAM_VALUE.g_iavs0_register_rdata}
}

proc update_MODELPARAM_VALUE.g_iavs0_register_wdata { MODELPARAM_VALUE.g_iavs0_register_wdata PARAM_VALUE.g_iavs0_register_wdata } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_register_wdata}] ${MODELPARAM_VALUE.g_iavs0_register_wdata}
}

proc update_MODELPARAM_VALUE.g_iavs0_id_width { MODELPARAM_VALUE.g_iavs0_id_width PARAM_VALUE.g_iavs0_id_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_iavs0_id_width}] ${MODELPARAM_VALUE.g_iavs0_id_width}
}

proc update_MODELPARAM_VALUE.g_same_iavs_hyperbus_clk { MODELPARAM_VALUE.g_same_iavs_hyperbus_clk PARAM_VALUE.g_same_iavs_hyperbus_clk } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_same_iavs_hyperbus_clk}] ${MODELPARAM_VALUE.g_same_iavs_hyperbus_clk}
}

proc update_MODELPARAM_VALUE.g_config_rd_buffer_as_sram { MODELPARAM_VALUE.g_config_rd_buffer_as_sram PARAM_VALUE.g_config_rd_buffer_as_sram } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_config_rd_buffer_as_sram}] ${MODELPARAM_VALUE.g_config_rd_buffer_as_sram}
}

proc update_MODELPARAM_VALUE.g_config_wr_buffer_as_sram { MODELPARAM_VALUE.g_config_wr_buffer_as_sram PARAM_VALUE.g_config_wr_buffer_as_sram } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_config_wr_buffer_as_sram}] ${MODELPARAM_VALUE.g_config_wr_buffer_as_sram}
}

proc update_MODELPARAM_VALUE.g_num_chipselect { MODELPARAM_VALUE.g_num_chipselect PARAM_VALUE.g_num_chipselect } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_num_chipselect}] ${MODELPARAM_VALUE.g_num_chipselect}
}

proc update_MODELPARAM_VALUE.g_dev0_config { MODELPARAM_VALUE.g_dev0_config PARAM_VALUE.g_dev0_config } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_dev0_config}] ${MODELPARAM_VALUE.g_dev0_config}
}

proc update_MODELPARAM_VALUE.g_dev1_config { MODELPARAM_VALUE.g_dev1_config PARAM_VALUE.g_dev1_config } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_dev1_config}] ${MODELPARAM_VALUE.g_dev1_config}
}

proc update_MODELPARAM_VALUE.g_dev0_timing { MODELPARAM_VALUE.g_dev0_timing PARAM_VALUE.g_dev0_timing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_dev0_timing}] ${MODELPARAM_VALUE.g_dev0_timing}
}

proc update_MODELPARAM_VALUE.g_dev1_timing { MODELPARAM_VALUE.g_dev1_timing PARAM_VALUE.g_dev1_timing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_dev1_timing}] ${MODELPARAM_VALUE.g_dev1_timing}
}

proc update_MODELPARAM_VALUE.g_dqin_rdata_width { MODELPARAM_VALUE.g_dqin_rdata_width PARAM_VALUE.g_dqin_rdata_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_dqin_rdata_width}] ${MODELPARAM_VALUE.g_dqin_rdata_width}
}

proc update_MODELPARAM_VALUE.g_rst_mode { MODELPARAM_VALUE.g_rst_mode PARAM_VALUE.g_rst_mode } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_rst_mode}] ${MODELPARAM_VALUE.g_rst_mode}
}

proc update_MODELPARAM_VALUE.g_device_family { MODELPARAM_VALUE.g_device_family PARAM_VALUE.g_device_family } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_device_family}] ${MODELPARAM_VALUE.g_device_family}
}

