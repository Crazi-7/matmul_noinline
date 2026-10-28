# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONTROL_INTF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEBUG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEF_TIMEOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEF_TIMEOUT_RAND_SELECT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_DEVICES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_RETRIES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_TIMEOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_TIMEOUT_RAND_RANGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MSG_DATA_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STORE_PTID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_LAT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.CONTROL_INTF { PARAM_VALUE.CONTROL_INTF } {
	# Procedure called to update CONTROL_INTF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONTROL_INTF { PARAM_VALUE.CONTROL_INTF } {
	# Procedure called to validate CONTROL_INTF
	return true
}

proc update_PARAM_VALUE.DEBUG { PARAM_VALUE.DEBUG } {
	# Procedure called to update DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG { PARAM_VALUE.DEBUG } {
	# Procedure called to validate DEBUG
	return true
}

proc update_PARAM_VALUE.DEF_TIMEOUT { PARAM_VALUE.DEF_TIMEOUT } {
	# Procedure called to update DEF_TIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEF_TIMEOUT { PARAM_VALUE.DEF_TIMEOUT } {
	# Procedure called to validate DEF_TIMEOUT
	return true
}

proc update_PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT { PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT } {
	# Procedure called to update DEF_TIMEOUT_RAND_SELECT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT { PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT } {
	# Procedure called to validate DEF_TIMEOUT_RAND_SELECT
	return true
}

proc update_PARAM_VALUE.MAX_DEVICES { PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to update MAX_DEVICES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_DEVICES { PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to validate MAX_DEVICES
	return true
}

proc update_PARAM_VALUE.MAX_RETRIES { PARAM_VALUE.MAX_RETRIES } {
	# Procedure called to update MAX_RETRIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_RETRIES { PARAM_VALUE.MAX_RETRIES } {
	# Procedure called to validate MAX_RETRIES
	return true
}

proc update_PARAM_VALUE.MAX_TIMEOUT { PARAM_VALUE.MAX_TIMEOUT } {
	# Procedure called to update MAX_TIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_TIMEOUT { PARAM_VALUE.MAX_TIMEOUT } {
	# Procedure called to validate MAX_TIMEOUT
	return true
}

proc update_PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE { PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE } {
	# Procedure called to update MAX_TIMEOUT_RAND_RANGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE { PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE } {
	# Procedure called to validate MAX_TIMEOUT_RAND_RANGE
	return true
}

proc update_PARAM_VALUE.MSG_DATA_SIZE { PARAM_VALUE.MSG_DATA_SIZE } {
	# Procedure called to update MSG_DATA_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MSG_DATA_SIZE { PARAM_VALUE.MSG_DATA_SIZE } {
	# Procedure called to validate MSG_DATA_SIZE
	return true
}

proc update_PARAM_VALUE.STORE_PTID { PARAM_VALUE.STORE_PTID } {
	# Procedure called to update STORE_PTID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STORE_PTID { PARAM_VALUE.STORE_PTID } {
	# Procedure called to validate STORE_PTID
	return true
}

proc update_PARAM_VALUE.TOTAL_LAT_WIDTH { PARAM_VALUE.TOTAL_LAT_WIDTH } {
	# Procedure called to update TOTAL_LAT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_LAT_WIDTH { PARAM_VALUE.TOTAL_LAT_WIDTH } {
	# Procedure called to validate TOTAL_LAT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.MAX_DEVICES { MODELPARAM_VALUE.MAX_DEVICES PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_DEVICES}] ${MODELPARAM_VALUE.MAX_DEVICES}
}

proc update_MODELPARAM_VALUE.STORE_PTID { MODELPARAM_VALUE.STORE_PTID PARAM_VALUE.STORE_PTID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STORE_PTID}] ${MODELPARAM_VALUE.STORE_PTID}
}

proc update_MODELPARAM_VALUE.MAX_TIMEOUT { MODELPARAM_VALUE.MAX_TIMEOUT PARAM_VALUE.MAX_TIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_TIMEOUT}] ${MODELPARAM_VALUE.MAX_TIMEOUT}
}

proc update_MODELPARAM_VALUE.MAX_TIMEOUT_RAND_RANGE { MODELPARAM_VALUE.MAX_TIMEOUT_RAND_RANGE PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_TIMEOUT_RAND_RANGE}] ${MODELPARAM_VALUE.MAX_TIMEOUT_RAND_RANGE}
}

proc update_MODELPARAM_VALUE.DEF_TIMEOUT { MODELPARAM_VALUE.DEF_TIMEOUT PARAM_VALUE.DEF_TIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEF_TIMEOUT}] ${MODELPARAM_VALUE.DEF_TIMEOUT}
}

proc update_MODELPARAM_VALUE.DEF_TIMEOUT_RAND_SELECT { MODELPARAM_VALUE.DEF_TIMEOUT_RAND_SELECT PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEF_TIMEOUT_RAND_SELECT}] ${MODELPARAM_VALUE.DEF_TIMEOUT_RAND_SELECT}
}

proc update_MODELPARAM_VALUE.DEBUG { MODELPARAM_VALUE.DEBUG PARAM_VALUE.DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEBUG}] ${MODELPARAM_VALUE.DEBUG}
}

proc update_MODELPARAM_VALUE.CONTROL_INTF { MODELPARAM_VALUE.CONTROL_INTF PARAM_VALUE.CONTROL_INTF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONTROL_INTF}] ${MODELPARAM_VALUE.CONTROL_INTF}
}

proc update_MODELPARAM_VALUE.TOTAL_LAT_WIDTH { MODELPARAM_VALUE.TOTAL_LAT_WIDTH PARAM_VALUE.TOTAL_LAT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_LAT_WIDTH}] ${MODELPARAM_VALUE.TOTAL_LAT_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MSG_DATA_SIZE { MODELPARAM_VALUE.MSG_DATA_SIZE PARAM_VALUE.MSG_DATA_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MSG_DATA_SIZE}] ${MODELPARAM_VALUE.MSG_DATA_SIZE}
}

proc update_MODELPARAM_VALUE.MAX_RETRIES { MODELPARAM_VALUE.MAX_RETRIES PARAM_VALUE.MAX_RETRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_RETRIES}] ${MODELPARAM_VALUE.MAX_RETRIES}
}

