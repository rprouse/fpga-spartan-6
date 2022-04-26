
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name BlinkLeds_HDL -dir "/home/rob/src/fpga/BlinkLeds_HDL/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rob/src/fpga/BlinkLeds_HDL/BlinkLeds_HDL.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rob/src/fpga/BlinkLeds_HDL} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "BlinkLeds_HDL.ucf" [current_fileset -constrset]
add_files [list {BlinkLeds_HDL.ucf}] -fileset [get_property constrset [current_run]]
link_design
