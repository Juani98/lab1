# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
set_param synth.incrementalSynthesisCache C:/Users/Usuario/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-13856-DESKTOP-TV2T1SG/incrSyn
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.cache/wt [current_project]
set_property parent.project_path C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo c:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteF_BCD/lab1_parteF_BCD.srcs/sources_1/new/BCD_counter.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/LSFR_4bits.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/counter_28bits.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteE_counter/lab1_parteE_counter.srcs/sources_1/new/counter_Nbits.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd
  C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc
set_property used_in_implementation false [get_files C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top sistema_digital -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef sistema_digital.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file sistema_digital_utilization_synth.rpt -pb sistema_digital_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
