# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.cache/wt [current_project]
set_property parent.project_path C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Conor/Documents/ePWM_Project/ePWM_Project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Action_Qualifier.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Clock_Prescale.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Counter_Compare.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Dead_Band.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Event_Trigger.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Time_Base.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/Trip_Zone.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/ePWM.vhd
  C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/sources_1/new/User.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/constrs_1/new/ARTY_Constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/constrs_1/new/ARTY_Constraints.xdc]

read_xdc C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/constrs_1/imports/constraints/Arty_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Conor/Documents/ePWM_Project/ePWM_Project.srcs/constrs_1/imports/constraints/Arty_Master.xdc]


synth_design -top User -part xc7a35ticsg324-1L


write_checkpoint -force -noxdef User.dcp

catch { report_utilization -file User_utilization_synth.rpt -pb User_utilization_synth.pb }
