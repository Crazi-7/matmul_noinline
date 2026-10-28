
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/picos_ompss_manager_v7_5.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {POM}]
  ipgui::add_param $IPINST -name "AXILITE_INTF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CMDIN_SUBQUEUE_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CMDOUT_SUBQUEUE_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DBG_AVAIL_COUNT_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DBG_AVAIL_COUNT_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_DEPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_SPAWN_QUEUES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_TASK_CREATION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOCK_SUPPORT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_ACCS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_ACC_CREATORS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_ACC_TYPES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_ARGS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COPS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_DEPS_PER_TASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCHED_ACCID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCHED_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCHED_TTYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPAWNIN_QUEUE_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPAWNOUT_QUEUE_LEN" -parent ${Page_0}

  #Adding Page
  set Picos [ipgui::add_page $IPINST -name "Picos"]
  set DM_DS [ipgui::add_param $IPINST -name "DM_DS" -parent ${Picos} -widget comboBox]
  set_property tooltip {Data structure of the dependence memory} ${DM_DS}
  set DM_HASH [ipgui::add_param $IPINST -name "DM_HASH" -parent ${Picos} -widget comboBox]
  set_property tooltip {Dependence memory hash function} ${DM_HASH}
  ipgui::add_param $IPINST -name "DM_SIZE" -parent ${Picos}
  ipgui::add_param $IPINST -name "VM_SIZE" -parent ${Picos}
  ipgui::add_param $IPINST -name "HASH_T_SIZE" -parent ${Picos}
  ipgui::add_param $IPINST -name "NUM_DCTS" -parent ${Picos} -widget comboBox
  ipgui::add_param $IPINST -name "TM_SIZE" -parent ${Picos}


}

proc update_PARAM_VALUE.DBG_AVAIL_COUNT_EN { PARAM_VALUE.DBG_AVAIL_COUNT_EN PARAM_VALUE.AXILITE_INTF } {
	# Procedure called to update DBG_AVAIL_COUNT_EN when any of the dependent parameters in the arguments change
	
	set DBG_AVAIL_COUNT_EN ${PARAM_VALUE.DBG_AVAIL_COUNT_EN}
	set AXILITE_INTF ${PARAM_VALUE.AXILITE_INTF}
	set values(AXILITE_INTF) [get_property value $AXILITE_INTF]
	if { [gen_USERPARAMETER_DBG_AVAIL_COUNT_EN_ENABLEMENT $values(AXILITE_INTF)] } {
		set_property enabled true $DBG_AVAIL_COUNT_EN
	} else {
		set_property enabled false $DBG_AVAIL_COUNT_EN
	}
}

proc validate_PARAM_VALUE.DBG_AVAIL_COUNT_EN { PARAM_VALUE.DBG_AVAIL_COUNT_EN } {
	# Procedure called to validate DBG_AVAIL_COUNT_EN
	return true
}

proc update_PARAM_VALUE.DBG_AVAIL_COUNT_W { PARAM_VALUE.DBG_AVAIL_COUNT_W PARAM_VALUE.AXILITE_INTF PARAM_VALUE.DBG_AVAIL_COUNT_EN } {
	# Procedure called to update DBG_AVAIL_COUNT_W when any of the dependent parameters in the arguments change
	
	set DBG_AVAIL_COUNT_W ${PARAM_VALUE.DBG_AVAIL_COUNT_W}
	set AXILITE_INTF ${PARAM_VALUE.AXILITE_INTF}
	set DBG_AVAIL_COUNT_EN ${PARAM_VALUE.DBG_AVAIL_COUNT_EN}
	set values(AXILITE_INTF) [get_property value $AXILITE_INTF]
	set values(DBG_AVAIL_COUNT_EN) [get_property value $DBG_AVAIL_COUNT_EN]
	if { [gen_USERPARAMETER_DBG_AVAIL_COUNT_W_ENABLEMENT $values(AXILITE_INTF) $values(DBG_AVAIL_COUNT_EN)] } {
		set_property enabled true $DBG_AVAIL_COUNT_W
	} else {
		set_property enabled false $DBG_AVAIL_COUNT_W
	}
}

proc validate_PARAM_VALUE.DBG_AVAIL_COUNT_W { PARAM_VALUE.DBG_AVAIL_COUNT_W } {
	# Procedure called to validate DBG_AVAIL_COUNT_W
	return true
}

proc update_PARAM_VALUE.DM_DS { PARAM_VALUE.DM_DS PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update DM_DS when any of the dependent parameters in the arguments change
	
	set DM_DS ${PARAM_VALUE.DM_DS}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_DM_DS_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $DM_DS
	} else {
		set_property enabled false $DM_DS
	}
}

proc validate_PARAM_VALUE.DM_DS { PARAM_VALUE.DM_DS } {
	# Procedure called to validate DM_DS
	return true
}

proc update_PARAM_VALUE.DM_HASH { PARAM_VALUE.DM_HASH PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update DM_HASH when any of the dependent parameters in the arguments change
	
	set DM_HASH ${PARAM_VALUE.DM_HASH}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_DM_HASH_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $DM_HASH
	} else {
		set_property enabled false $DM_HASH
	}
}

proc validate_PARAM_VALUE.DM_HASH { PARAM_VALUE.DM_HASH } {
	# Procedure called to validate DM_HASH
	return true
}

proc update_PARAM_VALUE.DM_SIZE { PARAM_VALUE.DM_SIZE PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update DM_SIZE when any of the dependent parameters in the arguments change
	
	set DM_SIZE ${PARAM_VALUE.DM_SIZE}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_DM_SIZE_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $DM_SIZE
	} else {
		set_property enabled false $DM_SIZE
	}
}

proc validate_PARAM_VALUE.DM_SIZE { PARAM_VALUE.DM_SIZE } {
	# Procedure called to validate DM_SIZE
	return true
}

proc update_PARAM_VALUE.ENABLE_DEPS { PARAM_VALUE.ENABLE_DEPS PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to update ENABLE_DEPS when any of the dependent parameters in the arguments change
	
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	if { [gen_USERPARAMETER_ENABLE_DEPS_ENABLEMENT $values(ENABLE_TASK_CREATION)] } {
		set_property enabled true $ENABLE_DEPS
	} else {
		set_property enabled false $ENABLE_DEPS
	}
}

proc validate_PARAM_VALUE.ENABLE_DEPS { PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to validate ENABLE_DEPS
	return true
}

proc update_PARAM_VALUE.HASH_T_SIZE { PARAM_VALUE.HASH_T_SIZE PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update HASH_T_SIZE when any of the dependent parameters in the arguments change
	
	set HASH_T_SIZE ${PARAM_VALUE.HASH_T_SIZE}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_HASH_T_SIZE_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $HASH_T_SIZE
	} else {
		set_property enabled false $HASH_T_SIZE
	}
}

proc validate_PARAM_VALUE.HASH_T_SIZE { PARAM_VALUE.HASH_T_SIZE } {
	# Procedure called to validate HASH_T_SIZE
	return true
}

proc update_PARAM_VALUE.NUM_DCTS { PARAM_VALUE.NUM_DCTS PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update NUM_DCTS when any of the dependent parameters in the arguments change
	
	set NUM_DCTS ${PARAM_VALUE.NUM_DCTS}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_NUM_DCTS_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $NUM_DCTS
	} else {
		set_property enabled false $NUM_DCTS
	}
}

proc validate_PARAM_VALUE.NUM_DCTS { PARAM_VALUE.NUM_DCTS } {
	# Procedure called to validate NUM_DCTS
	return true
}

proc update_PARAM_VALUE.SCHED_ACCID { PARAM_VALUE.SCHED_ACCID PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to update SCHED_ACCID when any of the dependent parameters in the arguments change
	
	set SCHED_ACCID ${PARAM_VALUE.SCHED_ACCID}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	if { [gen_USERPARAMETER_SCHED_ACCID_ENABLEMENT $values(ENABLE_TASK_CREATION)] } {
		set_property enabled true $SCHED_ACCID
	} else {
		set_property enabled false $SCHED_ACCID
	}
}

proc validate_PARAM_VALUE.SCHED_ACCID { PARAM_VALUE.SCHED_ACCID } {
	# Procedure called to validate SCHED_ACCID
	return true
}

proc update_PARAM_VALUE.SCHED_COUNT { PARAM_VALUE.SCHED_COUNT PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to update SCHED_COUNT when any of the dependent parameters in the arguments change
	
	set SCHED_COUNT ${PARAM_VALUE.SCHED_COUNT}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	if { [gen_USERPARAMETER_SCHED_COUNT_ENABLEMENT $values(ENABLE_TASK_CREATION)] } {
		set_property enabled true $SCHED_COUNT
	} else {
		set_property enabled false $SCHED_COUNT
	}
}

proc validate_PARAM_VALUE.SCHED_COUNT { PARAM_VALUE.SCHED_COUNT } {
	# Procedure called to validate SCHED_COUNT
	return true
}

proc update_PARAM_VALUE.SCHED_TTYPE { PARAM_VALUE.SCHED_TTYPE PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to update SCHED_TTYPE when any of the dependent parameters in the arguments change
	
	set SCHED_TTYPE ${PARAM_VALUE.SCHED_TTYPE}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	if { [gen_USERPARAMETER_SCHED_TTYPE_ENABLEMENT $values(ENABLE_TASK_CREATION)] } {
		set_property enabled true $SCHED_TTYPE
	} else {
		set_property enabled false $SCHED_TTYPE
	}
}

proc validate_PARAM_VALUE.SCHED_TTYPE { PARAM_VALUE.SCHED_TTYPE } {
	# Procedure called to validate SCHED_TTYPE
	return true
}

proc update_PARAM_VALUE.SPAWNIN_QUEUE_LEN { PARAM_VALUE.SPAWNIN_QUEUE_LEN PARAM_VALUE.ENABLE_SPAWN_QUEUES } {
	# Procedure called to update SPAWNIN_QUEUE_LEN when any of the dependent parameters in the arguments change
	
	set SPAWNIN_QUEUE_LEN ${PARAM_VALUE.SPAWNIN_QUEUE_LEN}
	set ENABLE_SPAWN_QUEUES ${PARAM_VALUE.ENABLE_SPAWN_QUEUES}
	set values(ENABLE_SPAWN_QUEUES) [get_property value $ENABLE_SPAWN_QUEUES]
	if { [gen_USERPARAMETER_SPAWNIN_QUEUE_LEN_ENABLEMENT $values(ENABLE_SPAWN_QUEUES)] } {
		set_property enabled true $SPAWNIN_QUEUE_LEN
	} else {
		set_property enabled false $SPAWNIN_QUEUE_LEN
	}
}

proc validate_PARAM_VALUE.SPAWNIN_QUEUE_LEN { PARAM_VALUE.SPAWNIN_QUEUE_LEN } {
	# Procedure called to validate SPAWNIN_QUEUE_LEN
	return true
}

proc update_PARAM_VALUE.SPAWNOUT_QUEUE_LEN { PARAM_VALUE.SPAWNOUT_QUEUE_LEN PARAM_VALUE.ENABLE_SPAWN_QUEUES } {
	# Procedure called to update SPAWNOUT_QUEUE_LEN when any of the dependent parameters in the arguments change
	
	set SPAWNOUT_QUEUE_LEN ${PARAM_VALUE.SPAWNOUT_QUEUE_LEN}
	set ENABLE_SPAWN_QUEUES ${PARAM_VALUE.ENABLE_SPAWN_QUEUES}
	set values(ENABLE_SPAWN_QUEUES) [get_property value $ENABLE_SPAWN_QUEUES]
	if { [gen_USERPARAMETER_SPAWNOUT_QUEUE_LEN_ENABLEMENT $values(ENABLE_SPAWN_QUEUES)] } {
		set_property enabled true $SPAWNOUT_QUEUE_LEN
	} else {
		set_property enabled false $SPAWNOUT_QUEUE_LEN
	}
}

proc validate_PARAM_VALUE.SPAWNOUT_QUEUE_LEN { PARAM_VALUE.SPAWNOUT_QUEUE_LEN } {
	# Procedure called to validate SPAWNOUT_QUEUE_LEN
	return true
}

proc update_PARAM_VALUE.TM_SIZE { PARAM_VALUE.TM_SIZE PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update TM_SIZE when any of the dependent parameters in the arguments change
	
	set TM_SIZE ${PARAM_VALUE.TM_SIZE}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_TM_SIZE_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $TM_SIZE
	} else {
		set_property enabled false $TM_SIZE
	}
}

proc validate_PARAM_VALUE.TM_SIZE { PARAM_VALUE.TM_SIZE } {
	# Procedure called to validate TM_SIZE
	return true
}

proc update_PARAM_VALUE.VM_SIZE { PARAM_VALUE.VM_SIZE PARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to update VM_SIZE when any of the dependent parameters in the arguments change
	
	set VM_SIZE ${PARAM_VALUE.VM_SIZE}
	set ENABLE_TASK_CREATION ${PARAM_VALUE.ENABLE_TASK_CREATION}
	set ENABLE_DEPS ${PARAM_VALUE.ENABLE_DEPS}
	set values(ENABLE_TASK_CREATION) [get_property value $ENABLE_TASK_CREATION]
	set values(ENABLE_DEPS) [get_property value $ENABLE_DEPS]
	if { [gen_USERPARAMETER_VM_SIZE_ENABLEMENT $values(ENABLE_TASK_CREATION) $values(ENABLE_DEPS)] } {
		set_property enabled true $VM_SIZE
	} else {
		set_property enabled false $VM_SIZE
	}
}

proc validate_PARAM_VALUE.VM_SIZE { PARAM_VALUE.VM_SIZE } {
	# Procedure called to validate VM_SIZE
	return true
}

proc update_PARAM_VALUE.AXILITE_INTF { PARAM_VALUE.AXILITE_INTF } {
	# Procedure called to update AXILITE_INTF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXILITE_INTF { PARAM_VALUE.AXILITE_INTF } {
	# Procedure called to validate AXILITE_INTF
	return true
}

proc update_PARAM_VALUE.CMDIN_SUBQUEUE_LEN { PARAM_VALUE.CMDIN_SUBQUEUE_LEN } {
	# Procedure called to update CMDIN_SUBQUEUE_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CMDIN_SUBQUEUE_LEN { PARAM_VALUE.CMDIN_SUBQUEUE_LEN } {
	# Procedure called to validate CMDIN_SUBQUEUE_LEN
	return true
}

proc update_PARAM_VALUE.CMDOUT_SUBQUEUE_LEN { PARAM_VALUE.CMDOUT_SUBQUEUE_LEN } {
	# Procedure called to update CMDOUT_SUBQUEUE_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CMDOUT_SUBQUEUE_LEN { PARAM_VALUE.CMDOUT_SUBQUEUE_LEN } {
	# Procedure called to validate CMDOUT_SUBQUEUE_LEN
	return true
}

proc update_PARAM_VALUE.ENABLE_SPAWN_QUEUES { PARAM_VALUE.ENABLE_SPAWN_QUEUES } {
	# Procedure called to update ENABLE_SPAWN_QUEUES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_SPAWN_QUEUES { PARAM_VALUE.ENABLE_SPAWN_QUEUES } {
	# Procedure called to validate ENABLE_SPAWN_QUEUES
	return true
}

proc update_PARAM_VALUE.ENABLE_TASK_CREATION { PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to update ENABLE_TASK_CREATION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_TASK_CREATION { PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to validate ENABLE_TASK_CREATION
	return true
}

proc update_PARAM_VALUE.LOCK_SUPPORT { PARAM_VALUE.LOCK_SUPPORT } {
	# Procedure called to update LOCK_SUPPORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOCK_SUPPORT { PARAM_VALUE.LOCK_SUPPORT } {
	# Procedure called to validate LOCK_SUPPORT
	return true
}

proc update_PARAM_VALUE.MAX_ACCS { PARAM_VALUE.MAX_ACCS } {
	# Procedure called to update MAX_ACCS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_ACCS { PARAM_VALUE.MAX_ACCS } {
	# Procedure called to validate MAX_ACCS
	return true
}

proc update_PARAM_VALUE.MAX_ACC_CREATORS { PARAM_VALUE.MAX_ACC_CREATORS } {
	# Procedure called to update MAX_ACC_CREATORS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_ACC_CREATORS { PARAM_VALUE.MAX_ACC_CREATORS } {
	# Procedure called to validate MAX_ACC_CREATORS
	return true
}

proc update_PARAM_VALUE.MAX_ACC_TYPES { PARAM_VALUE.MAX_ACC_TYPES } {
	# Procedure called to update MAX_ACC_TYPES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_ACC_TYPES { PARAM_VALUE.MAX_ACC_TYPES } {
	# Procedure called to validate MAX_ACC_TYPES
	return true
}

proc update_PARAM_VALUE.MAX_ARGS_PER_TASK { PARAM_VALUE.MAX_ARGS_PER_TASK } {
	# Procedure called to update MAX_ARGS_PER_TASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_ARGS_PER_TASK { PARAM_VALUE.MAX_ARGS_PER_TASK } {
	# Procedure called to validate MAX_ARGS_PER_TASK
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


proc update_MODELPARAM_VALUE.MAX_ACCS { MODELPARAM_VALUE.MAX_ACCS PARAM_VALUE.MAX_ACCS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_ACCS}] ${MODELPARAM_VALUE.MAX_ACCS}
}

proc update_MODELPARAM_VALUE.MAX_ACC_CREATORS { MODELPARAM_VALUE.MAX_ACC_CREATORS PARAM_VALUE.MAX_ACC_CREATORS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_ACC_CREATORS}] ${MODELPARAM_VALUE.MAX_ACC_CREATORS}
}

proc update_MODELPARAM_VALUE.MAX_ACC_TYPES { MODELPARAM_VALUE.MAX_ACC_TYPES PARAM_VALUE.MAX_ACC_TYPES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_ACC_TYPES}] ${MODELPARAM_VALUE.MAX_ACC_TYPES}
}

proc update_MODELPARAM_VALUE.CMDIN_SUBQUEUE_LEN { MODELPARAM_VALUE.CMDIN_SUBQUEUE_LEN PARAM_VALUE.CMDIN_SUBQUEUE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CMDIN_SUBQUEUE_LEN}] ${MODELPARAM_VALUE.CMDIN_SUBQUEUE_LEN}
}

proc update_MODELPARAM_VALUE.CMDOUT_SUBQUEUE_LEN { MODELPARAM_VALUE.CMDOUT_SUBQUEUE_LEN PARAM_VALUE.CMDOUT_SUBQUEUE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CMDOUT_SUBQUEUE_LEN}] ${MODELPARAM_VALUE.CMDOUT_SUBQUEUE_LEN}
}

proc update_MODELPARAM_VALUE.SPAWNIN_QUEUE_LEN { MODELPARAM_VALUE.SPAWNIN_QUEUE_LEN PARAM_VALUE.SPAWNIN_QUEUE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPAWNIN_QUEUE_LEN}] ${MODELPARAM_VALUE.SPAWNIN_QUEUE_LEN}
}

proc update_MODELPARAM_VALUE.SPAWNOUT_QUEUE_LEN { MODELPARAM_VALUE.SPAWNOUT_QUEUE_LEN PARAM_VALUE.SPAWNOUT_QUEUE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPAWNOUT_QUEUE_LEN}] ${MODELPARAM_VALUE.SPAWNOUT_QUEUE_LEN}
}

proc update_MODELPARAM_VALUE.LOCK_SUPPORT { MODELPARAM_VALUE.LOCK_SUPPORT PARAM_VALUE.LOCK_SUPPORT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOCK_SUPPORT}] ${MODELPARAM_VALUE.LOCK_SUPPORT}
}

proc update_MODELPARAM_VALUE.ENABLE_SPAWN_QUEUES { MODELPARAM_VALUE.ENABLE_SPAWN_QUEUES PARAM_VALUE.ENABLE_SPAWN_QUEUES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_SPAWN_QUEUES}] ${MODELPARAM_VALUE.ENABLE_SPAWN_QUEUES}
}

proc update_MODELPARAM_VALUE.AXILITE_INTF { MODELPARAM_VALUE.AXILITE_INTF PARAM_VALUE.AXILITE_INTF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXILITE_INTF}] ${MODELPARAM_VALUE.AXILITE_INTF}
}

proc update_MODELPARAM_VALUE.ENABLE_TASK_CREATION { MODELPARAM_VALUE.ENABLE_TASK_CREATION PARAM_VALUE.ENABLE_TASK_CREATION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_TASK_CREATION}] ${MODELPARAM_VALUE.ENABLE_TASK_CREATION}
}

proc update_MODELPARAM_VALUE.ENABLE_DEPS { MODELPARAM_VALUE.ENABLE_DEPS PARAM_VALUE.ENABLE_DEPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_DEPS}] ${MODELPARAM_VALUE.ENABLE_DEPS}
}

proc update_MODELPARAM_VALUE.DBG_AVAIL_COUNT_EN { MODELPARAM_VALUE.DBG_AVAIL_COUNT_EN PARAM_VALUE.DBG_AVAIL_COUNT_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBG_AVAIL_COUNT_EN}] ${MODELPARAM_VALUE.DBG_AVAIL_COUNT_EN}
}

proc update_MODELPARAM_VALUE.DBG_AVAIL_COUNT_W { MODELPARAM_VALUE.DBG_AVAIL_COUNT_W PARAM_VALUE.DBG_AVAIL_COUNT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBG_AVAIL_COUNT_W}] ${MODELPARAM_VALUE.DBG_AVAIL_COUNT_W}
}

proc update_MODELPARAM_VALUE.SCHED_COUNT { MODELPARAM_VALUE.SCHED_COUNT PARAM_VALUE.SCHED_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCHED_COUNT}] ${MODELPARAM_VALUE.SCHED_COUNT}
}

proc update_MODELPARAM_VALUE.SCHED_ACCID { MODELPARAM_VALUE.SCHED_ACCID PARAM_VALUE.SCHED_ACCID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCHED_ACCID}] ${MODELPARAM_VALUE.SCHED_ACCID}
}

proc update_MODELPARAM_VALUE.SCHED_TTYPE { MODELPARAM_VALUE.SCHED_TTYPE PARAM_VALUE.SCHED_TTYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCHED_TTYPE}] ${MODELPARAM_VALUE.SCHED_TTYPE}
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

proc update_MODELPARAM_VALUE.NUM_DCTS { MODELPARAM_VALUE.NUM_DCTS PARAM_VALUE.NUM_DCTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_DCTS}] ${MODELPARAM_VALUE.NUM_DCTS}
}

proc update_MODELPARAM_VALUE.TM_SIZE { MODELPARAM_VALUE.TM_SIZE PARAM_VALUE.TM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TM_SIZE}] ${MODELPARAM_VALUE.TM_SIZE}
}

proc update_MODELPARAM_VALUE.DM_SIZE { MODELPARAM_VALUE.DM_SIZE PARAM_VALUE.DM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_SIZE}] ${MODELPARAM_VALUE.DM_SIZE}
}

proc update_MODELPARAM_VALUE.VM_SIZE { MODELPARAM_VALUE.VM_SIZE PARAM_VALUE.VM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VM_SIZE}] ${MODELPARAM_VALUE.VM_SIZE}
}

proc update_MODELPARAM_VALUE.DM_DS { MODELPARAM_VALUE.DM_DS PARAM_VALUE.DM_DS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_DS}] ${MODELPARAM_VALUE.DM_DS}
}

proc update_MODELPARAM_VALUE.DM_HASH { MODELPARAM_VALUE.DM_HASH PARAM_VALUE.DM_HASH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_HASH}] ${MODELPARAM_VALUE.DM_HASH}
}

proc update_MODELPARAM_VALUE.HASH_T_SIZE { MODELPARAM_VALUE.HASH_T_SIZE PARAM_VALUE.HASH_T_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_T_SIZE}] ${MODELPARAM_VALUE.HASH_T_SIZE}
}

