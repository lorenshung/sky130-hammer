#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Nov 26 22:22:01 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v22.11-s119_1 (64bit) 01/20/2023 13:36 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 22.11-s119_1 NR230109-1351/22_11-UB (database version 18.20.601) {superthreading v2.19}
#@(#)CDS: AAE 22.11-s038 (64bit) 01/20/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 22.11-s031_1 () Jan 20 2023 09:23:44 ( )
#@(#)CDS: SYNTECH 22.11-s013_1 () Jan 18 2023 12:48:50 ( )
#@(#)CDS: CPE v22.11-s093
#@(#)CDS: IQuantus/TQuantus 21.2.0-s315 (64bit) Wed Nov 9 00:50:12 PST 2022 (Linux 3.10.0-693.el7.x86_64)

#@ source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/par.tcl
#@ Begin verbose source (pre): source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/par.tcl
puts "set_db design_process_node 130" 
set_db design_process_node 130
puts "set_multi_cpu_usage -local_cpu 4" 
set_multi_cpu_usage -local_cpu 4
puts "set_db timing_analysis_cppr both" 
set_db timing_analysis_cppr both
puts "set_db timing_analysis_type ocv" 
set_db timing_analysis_type ocv
puts "read_physical -lef { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef }" 
read_physical -lef { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef }
puts "read_mmmc /scratch/cs199-cfh/sky130-hammer/build/par-rundir/mmmc.tcl" 
read_mmmc /scratch/cs199-cfh/sky130-hammer/build/par-rundir/mmmc.tcl
#@ Begin verbose source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/mmmc.tcl (pre)
puts "create_constraint_mode -name my_constraint_mode -sdc_files [list /scratch/cs199-cfh/sky130-hammer/build/par-rundir/clock_constraints_fragment.sdc /scratch/cs199-cfh/sky130-hammer/build/par-rundir/pin_constraints_fragment.sdc /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdc] " 
create_constraint_mode -name my_constraint_mode -sdc_files [list /scratch/cs199-cfh/sky130-hammer/build/par-rundir/clock_constraints_fragment.sdc /scratch/cs199-cfh/sky130-hammer/build/par-rundir/pin_constraints_fragment.sdc /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdc] 
puts "create_library_set -name ss_100C_1v60.setup_set -timing [list /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib]" 
create_library_set -name ss_100C_1v60.setup_set -timing [list /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib]
puts "create_timing_condition -name ss_100C_1v60.setup_cond -library_sets [list ss_100C_1v60.setup_set]" 
create_timing_condition -name ss_100C_1v60.setup_cond -library_sets [list ss_100C_1v60.setup_set]
puts "create_rc_corner -name ss_100C_1v60.setup_rc -temperature 100.0 " 
create_rc_corner -name ss_100C_1v60.setup_rc -temperature 100.0 
puts "create_delay_corner -name ss_100C_1v60.setup_delay -timing_condition ss_100C_1v60.setup_cond -rc_corner ss_100C_1v60.setup_rc" 
create_delay_corner -name ss_100C_1v60.setup_delay -timing_condition ss_100C_1v60.setup_cond -rc_corner ss_100C_1v60.setup_rc
puts "create_analysis_view -name ss_100C_1v60.setup_view -delay_corner ss_100C_1v60.setup_delay -constraint_mode my_constraint_mode" 
create_analysis_view -name ss_100C_1v60.setup_view -delay_corner ss_100C_1v60.setup_delay -constraint_mode my_constraint_mode
puts "create_library_set -name ff_n40C_1v95.hold_set -timing [list /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib]" 
create_library_set -name ff_n40C_1v95.hold_set -timing [list /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8_tt_025C_1v80.rc.lib /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8_tt_025C_1v80.rc.lib]
puts "create_timing_condition -name ff_n40C_1v95.hold_cond -library_sets [list ff_n40C_1v95.hold_set]" 
create_timing_condition -name ff_n40C_1v95.hold_cond -library_sets [list ff_n40C_1v95.hold_set]
puts "create_rc_corner -name ff_n40C_1v95.hold_rc -temperature -40.0 " 
create_rc_corner -name ff_n40C_1v95.hold_rc -temperature -40.0 
puts "create_delay_corner -name ff_n40C_1v95.hold_delay -timing_condition ff_n40C_1v95.hold_cond -rc_corner ff_n40C_1v95.hold_rc" 
create_delay_corner -name ff_n40C_1v95.hold_delay -timing_condition ff_n40C_1v95.hold_cond -rc_corner ff_n40C_1v95.hold_rc
puts "create_analysis_view -name ff_n40C_1v95.hold_view -delay_corner ff_n40C_1v95.hold_delay -constraint_mode my_constraint_mode" 
create_analysis_view -name ff_n40C_1v95.hold_view -delay_corner ff_n40C_1v95.hold_delay -constraint_mode my_constraint_mode
puts "set_analysis_view -setup { ss_100C_1v60.setup_view } -hold { ff_n40C_1v95.hold_view  } " 
set_analysis_view -setup { ss_100C_1v60.setup_view } -hold { ff_n40C_1v95.hold_view  } 
#@ End verbose source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/mmmc.tcl
puts "read_netlist { /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.v } -top caliptra_top" 
read_netlist { /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.v } -top caliptra_top
puts "init_design" 
init_design
puts "set_db design_bottom_routing_layer 2" 
set_db design_bottom_routing_layer 2
puts "set_db design_top_routing_layer 5" 
set_db design_top_routing_layer 5
puts "set_db design_flow_effort standard" 
set_db design_flow_effort standard
puts "set_db design_power_effort low" 
set_db design_power_effort low
puts "write_db pre_sky130_innovus_settings" 
write_db pre_sky130_innovus_settings
puts "ln -sfn pre_sky130_innovus_settings latest" 
ln -sfn pre_sky130_innovus_settings latest
set_db place_global_place_io_pins  true
set_db opt_honor_fences true
set_db place_detail_dpt_flow true
set_db place_detail_color_aware_legal true
set_db place_global_solver_effort high
set_db place_detail_check_cut_spacing true
set_db place_global_cong_effort high
set_db opt_fix_fanout_load true
set_db opt_clock_gate_aware false
set_db opt_area_recovery true
set_db opt_post_route_area_reclaim setup_aware
set_db opt_fix_hold_verbose true
set_db cts_target_skew 0.03
set_db cts_max_fanout 10
set_db opt_setup_target_slack 0.10
set_db opt_hold_target_slack 0.10
set_db route_design_antenna_diode_insertion 1
set_db route_design_antenna_cell_name "sky130_fd_sc_hd__diode_2"
set_db route_design_high_freq_search_repair true
set_db route_design_detail_post_route_spread_wire true
set_db route_design_with_si_driven true
set_db route_design_with_timing_driven true
set_db route_design_concurrent_minimize_via_count_effort high
set_db opt_consider_routing_congestion true
set_db route_design_detail_use_multi_cut_via_effort medium
set_db floorplan_snap_die_grid manufacturing
puts "write_db pre_floorplan_design" 
write_db pre_floorplan_design
puts "ln -sfn pre_floorplan_design latest" 
ln -sfn pre_floorplan_design latest
puts "source -echo -verbose /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl" 
#@ source -echo -verbose /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl
#@ Begin verbose source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl (pre)
create_floorplan -core_margins_by die -flip f -die_size_by_io_height max -site CoreSite -die_size { 1800 1800 0 0 0 0 }
#@ End verbose source /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl
puts "read_power_intent -cpf /scratch/cs199-cfh/sky130-hammer/build/par-rundir/power_spec.cpf" 
read_power_intent -cpf /scratch/cs199-cfh/sky130-hammer/build/par-rundir/power_spec.cpf
puts "commit_power_intent" 
commit_power_intent
puts "write_db pre_global_power" 
write_db pre_global_power
puts "ln -sfn pre_global_power latest" 
ln -sfn pre_global_power latest
set_db init_power_nets {VDD}
set_db init_ground_nets {VSS}
connect_global_net VDD -type pg_pin -pin vdd -override
connect_global_net VSS -type pg_pin -pin vss -override
puts "write_db pre_place_bumps" 
write_db pre_place_bumps
puts "ln -sfn pre_place_bumps latest" 
ln -sfn pre_place_bumps latest
puts "write_db pre_place_tap_cells" 
write_db pre_place_tap_cells
puts "ln -sfn pre_place_tap_cells latest" 
ln -sfn pre_place_tap_cells latest
puts "write_db pre_sky130_connect_nets" 
write_db pre_sky130_connect_nets
puts "ln -sfn pre_sky130_connect_nets latest" 
ln -sfn pre_sky130_connect_nets latest
puts "write_db pre_power_straps_no_tapcells" 
write_db pre_power_straps_no_tapcells
puts "ln -sfn pre_power_straps_no_tapcells latest" 
ln -sfn pre_power_straps_no_tapcells latest
set_db add_stripes_stacked_via_bottom_layer met1
set_db add_stripes_stacked_via_top_layer met1
set_db add_stripes_spacing_from_block 2.000
add_stripes -pin_layer met1 -layer met1 -over_pins 1 -master SDFF* -block_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met1 -pad_core_ring_bottom_layer_limit met1 -pad_core_ring_top_layer_limit met1 -direction horizontal -width pin_width -nets { VSS VDD }
set_db add_stripes_stacked_via_top_layer met4
set_db add_stripes_stacked_via_bottom_layer met1
set_db add_stripes_trim_antenna_back_to_shape {stripe}
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit met4 -block_ring_top_layer_limit met1 -direction vertical -layer met4 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit met1 -set_to_set_distance 75.90 -spacing 3.66 -switch_layer_over_obs 0 -width 1.86 -area [get_db designs .core_bbox] -start [expr [lindex [lindex [get_db designs .core_bbox] 0] 0] + 7.35]
set_db add_stripes_stacked_via_top_layer met5
set_db add_stripes_stacked_via_bottom_layer met4
set_db add_stripes_trim_antenna_back_to_shape {stripe}
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 1 -block_ring_bottom_layer_limit met5 -block_ring_top_layer_limit met4 -direction horizontal -layer met5 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit met4 -set_to_set_distance 225.40 -spacing 17.68 -switch_layer_over_obs 0 -width 1.64 -area [get_db designs .core_bbox] -start [expr [lindex [lindex [get_db designs .core_bbox] 0] 1] + 5.62]
puts "write_db pre_place_pins" 
write_db pre_place_pins
puts "ln -sfn pre_place_pins latest" 
ln -sfn pre_place_pins latest
puts "set_db assign_pins_edit_in_batch true" 
set_db assign_pins_edit_in_batch true
set_db assign_pins_promoted_macro_bottom_layer met1
set_db assign_pins_promoted_macro_top_layer met5
set all_ppins ""
puts "edit_pin -fixed_pin -pin * -hinst caliptra_top -spread_type range -layer { met4 } -side bottom -start { 1800 0 } -end { 0 0 }   " 
edit_pin -fixed_pin -pin * -hinst caliptra_top -spread_type range -layer { met4 } -side bottom -start { 1800 0 } -end { 0 0 }   
puts "if {[llength $all_ppins] ne 0} {assign_io_pins -move_fixed_pin -pins [get_db $all_ppins .net.name]}" 
if {[llength $all_ppins] ne 0} {...}
puts "set_db assign_pins_edit_in_batch false" 
set_db assign_pins_edit_in_batch false
puts "write_db pre_place_opt_design" 
write_db pre_place_opt_design
puts "ln -sfn pre_place_opt_design latest" 
ln -sfn pre_place_opt_design latest
set unplaced_pins [get_db ports -if {.place_status == unplaced}]
if {$unplaced_pins ne ""} {
print_message -error "Some pins remain unplaced, which will cause invalid placement and routing. These are the unplaced pins: $unplaced_pins"
