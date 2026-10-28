# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FRAME_QUEUE_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_CLUSTER_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.FRAME_QUEUE_LEN { PARAM_VALUE.FRAME_QUEUE_LEN } {
	# Procedure called to update FRAME_QUEUE_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_QUEUE_LEN { PARAM_VALUE.FRAME_QUEUE_LEN } {
	# Procedure called to validate FRAME_QUEUE_LEN
	return true
}

proc update_PARAM_VALUE.MAX_CLUSTER_SIZE { PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to update MAX_CLUSTER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_CLUSTER_SIZE { PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to validate MAX_CLUSTER_SIZE
	return true
}


proc update_MODELPARAM_VALUE.FRAME_QUEUE_LEN { MODELPARAM_VALUE.FRAME_QUEUE_LEN PARAM_VALUE.FRAME_QUEUE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_QUEUE_LEN}] ${MODELPARAM_VALUE.FRAME_QUEUE_LEN}
}

proc update_MODELPARAM_VALUE.MAX_CLUSTER_SIZE { MODELPARAM_VALUE.MAX_CLUSTER_SIZE PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_CLUSTER_SIZE}] ${MODELPARAM_VALUE.MAX_CLUSTER_SIZE}
}

