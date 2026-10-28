# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUFFER_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_ARGS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_CLUSTER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COPS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_DEPS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_OWNS_PER_TASK" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUFFER_LEN { PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to update BUFFER_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_LEN { PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to validate BUFFER_LEN
	return true
}

proc update_PARAM_VALUE.IMP { PARAM_VALUE.IMP } {
	# Procedure called to update IMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMP { PARAM_VALUE.IMP } {
	# Procedure called to validate IMP
	return true
}

proc update_PARAM_VALUE.MAX_ARGS_PER_TASK { PARAM_VALUE.MAX_ARGS_PER_TASK } {
	# Procedure called to update MAX_ARGS_PER_TASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_ARGS_PER_TASK { PARAM_VALUE.MAX_ARGS_PER_TASK } {
	# Procedure called to validate MAX_ARGS_PER_TASK
	return true
}

proc update_PARAM_VALUE.MAX_CLUSTER_SIZE { PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to update MAX_CLUSTER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_CLUSTER_SIZE { PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to validate MAX_CLUSTER_SIZE
	return true
}

proc update_PARAM_VALUE.MAX_COPS_PER_TASK { PARAM_VALUE.MAX_COPS_PER_TASK } {
	# Procedure called to update MAX_COPS_PER_TASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COPS_PER_TASK { PARAM_VALUE.MAX_COPS_PER_TASK } {
	# Procedure called to validate MAX_COPS_PER_TASK
	return true
}

proc update_PARAM_VALUE.MAX_DEPS_PER_TASK { PARAM_VALUE.MAX_DEPS_PER_TASK } {
	# Procedure called to update MAX_DEPS_PER_TASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_DEPS_PER_TASK { PARAM_VALUE.MAX_DEPS_PER_TASK } {
	# Procedure called to validate MAX_DEPS_PER_TASK
	return true
}

proc update_PARAM_VALUE.MAX_OWNS_PER_TASK { PARAM_VALUE.MAX_OWNS_PER_TASK } {
	# Procedure called to update MAX_OWNS_PER_TASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_OWNS_PER_TASK { PARAM_VALUE.MAX_OWNS_PER_TASK } {
	# Procedure called to validate MAX_OWNS_PER_TASK
	return true
}


proc update_MODELPARAM_VALUE.MAX_ARGS_PER_TASK { MODELPARAM_VALUE.MAX_ARGS_PER_TASK PARAM_VALUE.MAX_ARGS_PER_TASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_ARGS_PER_TASK}] ${MODELPARAM_VALUE.MAX_ARGS_PER_TASK}
}

proc update_MODELPARAM_VALUE.MAX_DEPS_PER_TASK { MODELPARAM_VALUE.MAX_DEPS_PER_TASK PARAM_VALUE.MAX_DEPS_PER_TASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_DEPS_PER_TASK}] ${MODELPARAM_VALUE.MAX_DEPS_PER_TASK}
}

proc update_MODELPARAM_VALUE.MAX_COPS_PER_TASK { MODELPARAM_VALUE.MAX_COPS_PER_TASK PARAM_VALUE.MAX_COPS_PER_TASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COPS_PER_TASK}] ${MODELPARAM_VALUE.MAX_COPS_PER_TASK}
}

proc update_MODELPARAM_VALUE.MAX_OWNS_PER_TASK { MODELPARAM_VALUE.MAX_OWNS_PER_TASK PARAM_VALUE.MAX_OWNS_PER_TASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_OWNS_PER_TASK}] ${MODELPARAM_VALUE.MAX_OWNS_PER_TASK}
}

proc update_MODELPARAM_VALUE.MAX_CLUSTER_SIZE { MODELPARAM_VALUE.MAX_CLUSTER_SIZE PARAM_VALUE.MAX_CLUSTER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_CLUSTER_SIZE}] ${MODELPARAM_VALUE.MAX_CLUSTER_SIZE}
}

proc update_MODELPARAM_VALUE.BUFFER_LEN { MODELPARAM_VALUE.BUFFER_LEN PARAM_VALUE.BUFFER_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_LEN}] ${MODELPARAM_VALUE.BUFFER_LEN}
}

proc update_MODELPARAM_VALUE.IMP { MODELPARAM_VALUE.IMP PARAM_VALUE.IMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMP}] ${MODELPARAM_VALUE.IMP}
}

