###############################################################################################################
# Core-Level Timing Constraints for axi_register_slice Component "matmul_design_S_AXI_regslice_slr_1_0_0"
###############################################################################################################
#
# This component is configured in a multi-SLR crossing mode.
# Some storage elements enter reset asynchronously to withstand long inter-SLR delays.
# The async clear (CLR) inputs of these flops are excluded from timing analysis by the following constraint:
set_false_path -through [get_pins -filter {REF_PIN_NAME=~CLR} -of_objects  [get_cells -hierarchical *asyncclear*]]
#
# This component is configured in an auto-pipelining SLR-crossing mode.
# The following constraints prevent spurious SLR crossings in the SI/MI interface logic of forward-propagating channels:
set_property USER_SLR_ASSIGNMENT matmul_design_S_AXI_regslice_slr_1_0_0_si [get_cells -hierarchical -filter {NAME=~*slr_auto_src* && (NAME=~*ar16.ar_auto* || NAME=~*aw16.aw_auto* || NAME=~*w16.w_auto*)}]
set_property USER_SLR_ASSIGNMENT matmul_design_S_AXI_regslice_slr_1_0_0_mi [get_cells -hierarchical -filter {NAME=~*slr_auto_dest* && (NAME=~*ar16.ar_auto* || NAME=~*aw16.aw_auto* || NAME=~*w16.w_auto*)}]
#
# This component is configured in an auto-pipelining SLR-crossing mode.
# The following constraints prevent spurious SLR crossings in the SI/MI interface logic of response channels:
set_property USER_SLR_ASSIGNMENT matmul_design_S_AXI_regslice_slr_1_0_0_mi [get_cells -hierarchical -filter {NAME=~*slr_auto_src* && (NAME=~*r16.r_auto* || NAME=~*b16.b_auto*)}]
set_property USER_SLR_ASSIGNMENT matmul_design_S_AXI_regslice_slr_1_0_0_si [get_cells -hierarchical -filter {NAME=~*slr_auto_dest* && (NAME=~*r16.r_auto* || NAME=~*b16.b_auto*)}]

create_waiver -internal -scope -type CDC -id CDC-7 -user axi_register_slice -tags "1040889" -to [get_pins -filter {REF_PIN_NAME=~CLR} -of_objects  [get_cells -hierarchical -regexp .*15.*_multi/.*/common.srl_fifo_0/asyncclear_.*]] \
-description {Waiving CDC-7, CDC between 2 known synchronous clock domains}

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/aw12.slr_master_aw/tdm.laguna_m_payload_i_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/aw12.slr_slave_aw/tdm.laguna_s_payload_d_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/aw12.slr_slave_aw/tdm.payload_tdm_d4_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*12.slr_master_aw/tdm.laguna_m_payload_i_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*.slr_*_*/tdm.laguna_*_payload_*_reg[*]}]]
	
create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*.slr_*_*/tdm.laguna_*_payload_*_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*.slr_*_*/tdm.payload_tdm_d*_reg[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -from [get_pins -quiet -filter REF_PIN_NAME=~*C -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*12.slr_*_*/tdm.tdm_sample_inst/slow_clk_div2_reg}]] \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*12.slr_*_*/tdm.tdm_sample_inst/posedge_finder_*_reg}]]

create_waiver -type CDC -id {CDC-1} -user "axi_register_slice" -desc "Timing uncritical paths" -tags "1165639" -scope -internal \
    -from [get_pins -quiet -filter REF_PIN_NAME=~*C -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/*12.slr_*_*/tdm.tdm_sample_inst/slow_clk_div2_reg}]] \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */*12.slr_*_*/tdm.tdm_sample_inst/sample_cycle_r_reg}]]

