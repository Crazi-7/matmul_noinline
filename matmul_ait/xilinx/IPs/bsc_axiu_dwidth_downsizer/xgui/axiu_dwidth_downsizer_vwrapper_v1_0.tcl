# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_MST_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_SLV_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_MST_DATA_WIDTH { PARAM_VALUE.AXI_MST_DATA_WIDTH } {
	# Procedure called to update AXI_MST_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_MST_DATA_WIDTH { PARAM_VALUE.AXI_MST_DATA_WIDTH } {
	# Procedure called to validate AXI_MST_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_SLV_DATA_WIDTH { PARAM_VALUE.AXI_SLV_DATA_WIDTH } {
	# Procedure called to update AXI_SLV_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_SLV_DATA_WIDTH { PARAM_VALUE.AXI_SLV_DATA_WIDTH } {
	# Procedure called to validate AXI_SLV_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.READ { PARAM_VALUE.READ } {
	# Procedure called to update READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ { PARAM_VALUE.READ } {
	# Procedure called to validate READ
	return true
}

proc update_PARAM_VALUE.WRITE { PARAM_VALUE.WRITE } {
	# Procedure called to update WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE { PARAM_VALUE.WRITE } {
	# Procedure called to validate WRITE
	return true
}


proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_SLV_DATA_WIDTH { MODELPARAM_VALUE.AXI_SLV_DATA_WIDTH PARAM_VALUE.AXI_SLV_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_SLV_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_SLV_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_MST_DATA_WIDTH { MODELPARAM_VALUE.AXI_MST_DATA_WIDTH PARAM_VALUE.AXI_MST_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_MST_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_MST_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.READ { MODELPARAM_VALUE.READ PARAM_VALUE.READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ}] ${MODELPARAM_VALUE.READ}
}

proc update_MODELPARAM_VALUE.WRITE { MODELPARAM_VALUE.WRITE PARAM_VALUE.WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE}] ${MODELPARAM_VALUE.WRITE}
}

