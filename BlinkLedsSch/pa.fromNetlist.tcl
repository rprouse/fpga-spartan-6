
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name BlinkLedsSch -dir "/home/rob/src/fpga/BlinkLedsSch/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rob/src/fpga/BlinkLedsSch/BlinkSystem.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rob/src/fpga/BlinkLedsSch} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "BlinkSystem.ucf" [current_fileset -constrset]
add_files [list {BlinkSystem.ucf}] -fileset [get_property constrset [current_run]]
link_design
