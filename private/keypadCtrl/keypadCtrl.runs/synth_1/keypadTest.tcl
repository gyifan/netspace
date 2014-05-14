# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Labtools 27-147} -limit 4294967295
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0
read_verilog {
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bouncer.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadController.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keyConverter.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/slowclock.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/SevenSegmentDecoder.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/sevenSegCtrl.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bin2bcd.v
  U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadTest.v
}
read_xdc U:/private/keypadCtrl/keypadCtrl.srcs/constrs_1/new/keypadTest_const.xdc
set_property used_in_implementation false [get_files U:/private/keypadCtrl/keypadCtrl.srcs/constrs_1/new/keypadTest_const.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir U:/private/keypadCtrl/keypadCtrl.data/wt [current_project]
set_property parent.project_dir U:/private/keypadCtrl [current_project]
synth_design -top keypadTest -part xc7z020clg484-1
write_checkpoint keypadTest.dcp
report_utilization -file keypadTest_utilization_synth.rpt -pb keypadTest_utilization_synth.pb
