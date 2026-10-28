# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_EVENTS_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to update COUNTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to validate COUNTER_WIDTH
	return true
}

proc update_PARAM_VALUE.FIFO_LEN { PARAM_VALUE.FIFO_LEN } {
	# Procedure called to update FIFO_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_LEN { PARAM_VALUE.FIFO_LEN } {
	# Procedure called to validate FIFO_LEN
	return true
}

proc update_PARAM_VALUE.NUM_EVENTS_BITS { PARAM_VALUE.NUM_EVENTS_BITS } {
	# Procedure called to update NUM_EVENTS_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_EVENTS_BITS { PARAM_VALUE.NUM_EVENTS_BITS } {
	# Procedure called to validate NUM_EVENTS_BITS
	return true
}


proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.COUNTER_WIDTH { MODELPARAM_VALUE.COUNTER_WIDTH PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNTER_WIDTH}] ${MODELPARAM_VALUE.COUNTER_WIDTH}
}

proc update_MODELPARAM_VALUE.FIFO_LEN { MODELPARAM_VALUE.FIFO_LEN PARAM_VALUE.FIFO_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_LEN}] ${MODELPARAM_VALUE.FIFO_LEN}
}

proc update_MODELPARAM_VALUE.NUM_EVENTS_BITS { MODELPARAM_VALUE.NUM_EVENTS_BITS PARAM_VALUE.NUM_EVENTS_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_EVENTS_BITS}] ${MODELPARAM_VALUE.NUM_EVENTS_BITS}
}

