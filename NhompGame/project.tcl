set projDir "C:/Users/ASUS/Downloads/Nomper/work/vivado"
set projName "ChomperNomGame"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/ASUS/Downloads/Nomper/work/verilog/au_top_0.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/game_CU_1.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/alu_unit_2.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/game_regfile_3.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/ws2812b_writer_4.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/reset_conditioner_5.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/button_conditioner_6.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/edge_detector_7.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/adder_unit_8.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/boolean_unit_9.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/shifter_unit_10.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/compare_unit_11.v" "C:/Users/ASUS/Downloads/Nomper/work/verilog/pipeline_12.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/ASUS/Downloads/Nomper/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" "C:/Users/ASUS/Downloads/Nomper/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
