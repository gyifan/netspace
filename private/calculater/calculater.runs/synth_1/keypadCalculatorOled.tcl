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
add_files U:/private/calculater/calculater.srcs/sources_1/charLib.coe

read_ip U:/private/calculater/calculater.srcs/sources_1/ip/CHAR_LIB_COMP_N/CHAR_LIB_COMP_N.xci
set_property used_in_implementation false [get_files u:/private/calculater/calculater.srcs/sources_1/ip/CHAR_LIB_COMP_N/CHAR_LIB_COMP_N.dcp]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files U:/private/calculater/calculater.srcs/sources_1/ip/CHAR_LIB_COMP_N/CHAR_LIB_COMP_N.xci]

read_verilog {
  U:/private/calculater/calculater.srcs/sources_1/new/singleClkSigGen.v
  U:/private/calculater/calculater.srcs/sources_1/new/shiftInputReg.v
  U:/private/calculater/calculater.srcs/sources_1/new/fsm.v
  U:/private/calculater/calculater.srcs/sources_1/new/bin2bcdDec4.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_4bit.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_16bit.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/SpiCtrl.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/Delay.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/slowclock.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/bouncer.v
  U:/private/calculater/calculater.srcs/sources_1/new/calculator.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keypadController.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keyConverter.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/OledInit.v
  U:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v
  U:/private/calculater/calculater.srcs/sources_1/new/keypadCalculator.v
  U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/VerilogOLEDCtrl.v
  U:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v
}
read_xdc U:/private/calculater/calculater.srcs/constrs_1/imports/drop_box/constraints.xdc
set_property used_in_implementation false [get_files U:/private/calculater/calculater.srcs/constrs_1/imports/drop_box/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
read_xdc dont_buffer.xdc
set_property used_in_implementation false [get_files dont_buffer.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir U:/private/calculater/calculater.data/wt [current_project]
set_property parent.project_dir U:/private/calculater [current_project]
synth_design -top keypadCalculatorOled -part xc7z020clg484-1
write_checkpoint keypadCalculatorOled.dcp
report_utilization -file keypadCalculatorOled_utilization_synth.rpt -pb keypadCalculatorOled_utilization_synth.pb
