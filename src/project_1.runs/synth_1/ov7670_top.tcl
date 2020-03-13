# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip D:/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property is_locked true [get_files D:/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]

read_ip D:/project_1/project_1.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/project_1/project_1.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]
set_property is_locked true [get_files D:/project_1/project_1.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci]

read_verilog -library xil_defaultlib {
  D:/project_1/project_1.srcs/sources_1/new/sccb_sender.v
  D:/project_1/project_1.srcs/sources_1/new/camera_config.v
  D:/project_1/project_1.srcs/sources_1/new/camera_capture.v
  D:/project_1/project_1.srcs/sources_1/new/vga_disp.v
  D:/project_1/project_1.srcs/sources_1/new/debounce.v
  D:/project_1/project_1.srcs/sources_1/new/ov7670_top.v
}
read_xdc D:/project_1/project_1.srcs/constrs_1/new/constrain_1.xdc
set_property used_in_implementation false [get_files D:/project_1/project_1.srcs/constrs_1/new/constrain_1.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top ov7670_top -part xc7a35tcpg236-2
write_checkpoint -noxdef ov7670_top.dcp
catch { report_utilization -file ov7670_top_utilization_synth.rpt -pb ov7670_top_utilization_synth.pb }