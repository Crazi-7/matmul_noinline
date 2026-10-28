# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLUST_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_DEVICES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_OUTSTANDING_WRITES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MBUFFER_ADDR_PREFIX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MBUFFER_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MSG_DATA_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STORE_PTID" -parent ${Page_0}


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

proc update_PARAM_VALUE.CLUST_BITS { PARAM_VALUE.CLUST_BITS } {
	# Procedure called to update CLUST_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLUST_BITS { PARAM_VALUE.CLUST_BITS } {
	# Procedure called to validate CLUST_BITS
	return true
}

proc update_PARAM_VALUE.MAX_DEVICES { PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to update MAX_DEVICES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_DEVICES { PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to validate MAX_DEVICES
	return true
}

proc update_PARAM_VALUE.MAX_OUTSTANDING_WRITES { PARAM_VALUE.MAX_OUTSTANDING_WRITES } {
	# Procedure called to update MAX_OUTSTANDING_WRITES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_OUTSTANDING_WRITES { PARAM_VALUE.MAX_OUTSTANDING_WRITES } {
	# Procedure called to validate MAX_OUTSTANDING_WRITES
	return true
}

proc update_PARAM_VALUE.MBUFFER_ADDR_PREFIX { PARAM_VALUE.MBUFFER_ADDR_PREFIX } {
	# Procedure called to update MBUFFER_ADDR_PREFIX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MBUFFER_ADDR_PREFIX { PARAM_VALUE.MBUFFER_ADDR_PREFIX } {
	# Procedure called to validate MBUFFER_ADDR_PREFIX
	return true
}

proc update_PARAM_VALUE.MBUFFER_ADDR_WIDTH { PARAM_VALUE.MBUFFER_ADDR_WIDTH } {
	# Procedure called to update MBUFFER_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MBUFFER_ADDR_WIDTH { PARAM_VALUE.MBUFFER_ADDR_WIDTH } {
	# Procedure called to validate MBUFFER_ADDR_WIDTH
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


proc update_MODELPARAM_VALUE.MAX_DEVICES { MODELPARAM_VALUE.MAX_DEVICES PARAM_VALUE.MAX_DEVICES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_DEVICES}] ${MODELPARAM_VALUE.MAX_DEVICES}
}

proc update_MODELPARAM_VALUE.STORE_PTID { MODELPARAM_VALUE.STORE_PTID PARAM_VALUE.STORE_PTID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STORE_PTID}] ${MODELPARAM_VALUE.STORE_PTID}
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

proc update_MODELPARAM_VALUE.CLUST_BITS { MODELPARAM_VALUE.CLUST_BITS PARAM_VALUE.CLUST_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLUST_BITS}] ${MODELPARAM_VALUE.CLUST_BITS}
}

proc update_MODELPARAM_VALUE.MBUFFER_ADDR_WIDTH { MODELPARAM_VALUE.MBUFFER_ADDR_WIDTH PARAM_VALUE.MBUFFER_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MBUFFER_ADDR_WIDTH}] ${MODELPARAM_VALUE.MBUFFER_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.MBUFFER_ADDR_PREFIX { MODELPARAM_VALUE.MBUFFER_ADDR_PREFIX PARAM_VALUE.MBUFFER_ADDR_PREFIX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MBUFFER_ADDR_PREFIX}] ${MODELPARAM_VALUE.MBUFFER_ADDR_PREFIX}
}

proc update_MODELPARAM_VALUE.MAX_OUTSTANDING_WRITES { MODELPARAM_VALUE.MAX_OUTSTANDING_WRITES PARAM_VALUE.MAX_OUTSTANDING_WRITES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_OUTSTANDING_WRITES}] ${MODELPARAM_VALUE.MAX_OUTSTANDING_WRITES}
}

