# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

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


##########################################################
# Placement attributes  [get_db -category place]
##########################################################
#-------------------------------------------------------------------------------
set_db place_global_place_io_pins  true

set_db opt_honor_fences true
set_db place_detail_dpt_flow true
set_db place_detail_color_aware_legal true
set_db place_global_solver_effort high
set_db place_detail_check_cut_spacing true
set_db place_global_cong_effort high

##########################################################
# Optimization attributes  [get_db -category opt]
##########################################################
#-------------------------------------------------------------------------------

set_db opt_fix_fanout_load true
set_db opt_clock_gate_aware false
set_db opt_area_recovery true
set_db opt_post_route_area_reclaim setup_aware
set_db opt_fix_hold_verbose true

##########################################################
# Clock attributes  [get_db -category cts]
##########################################################
#-------------------------------------------------------------------------------
set_db cts_target_skew 0.03
set_db cts_max_fanout 10
#set_db cts_target_max_transition_time .3
set_db opt_setup_target_slack 0.10
set_db opt_hold_target_slack 0.10

##########################################################
# Routing attributes  [get_db -category route]
##########################################################
#-------------------------------------------------------------------------------
set_db route_design_antenna_diode_insertion 1
set_db route_design_antenna_cell_name "sky130_fd_sc_hd__diode_2"

set_db route_design_high_freq_search_repair true
set_db route_design_detail_post_route_spread_wire true
set_db route_design_with_si_driven true
set_db route_design_with_timing_driven true
set_db route_design_concurrent_minimize_via_count_effort high
set_db opt_consider_routing_congestion true
set_db route_design_detail_use_multi_cut_via_effort medium
    

# For top module: snap die to manufacturing grid, not placement grid
set_db floorplan_snap_die_grid manufacturing
        
puts "write_db pre_floorplan_design" 
write_db pre_floorplan_design
puts "ln -sfn pre_floorplan_design latest" 
ln -sfn pre_floorplan_design latest
puts "source -echo -verbose /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl" 
source -echo -verbose /scratch/cs199-cfh/sky130-hammer/build/par-rundir/floorplan.tcl
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

# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

# Power strap definition for layer met1 (rails):

set_db add_stripes_stacked_via_bottom_layer met1
set_db add_stripes_stacked_via_top_layer met1
set_db add_stripes_spacing_from_block 2.000
# Provide some stdcells to use as reference because the Cadence (v0.0.3) pdk doesn't have tapcells
add_stripes -pin_layer met1 -layer met1 -over_pins 1 -master SDFF* -block_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met1 -pad_core_ring_bottom_layer_limit met1 -pad_core_ring_top_layer_limit met1 -direction horizontal -width pin_width -nets { VSS VDD }

# Power strap definition for layer met4:

set_db add_stripes_stacked_via_top_layer met4
set_db add_stripes_stacked_via_bottom_layer met1
set_db add_stripes_trim_antenna_back_to_shape {stripe}
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit met4 -block_ring_top_layer_limit met1 -direction vertical -layer met4 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit met1 -set_to_set_distance 75.90 -spacing 3.66 -switch_layer_over_obs 0 -width 1.86 -area [get_db designs .core_bbox] -start [expr [lindex [lindex [get_db designs .core_bbox] 0] 0] + 7.35]

# Power strap definition for layer met5:

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
if {[llength $all_ppins] ne 0} {assign_io_pins -move_fixed_pin -pins [get_db $all_ppins .net.name]}
puts "set_db assign_pins_edit_in_batch false" 
set_db assign_pins_edit_in_batch false
puts "write_db pre_place_opt_design" 
write_db pre_place_opt_design
puts "ln -sfn pre_place_opt_design latest" 
ln -sfn pre_place_opt_design latest
set unplaced_pins [get_db ports -if {.place_status == unplaced}]
if {$unplaced_pins ne ""} {
    print_message -error "Some pins remain unplaced, which will cause invalid placement and routing. These are the unplaced pins: $unplaced_pins"
    exit 2
}
puts "set_db opt_enable_podv2_clock_opt_flow true" 
set_db opt_enable_podv2_clock_opt_flow true
set_db current_design .dft_dont_scan true
puts "place_opt_design" 
place_opt_design
puts "write_db pre_clock_tree" 
write_db pre_clock_tree
puts "ln -sfn pre_clock_tree latest" 
ln -sfn pre_clock_tree latest
puts "set_db opt_fix_fanout_load true" 
set_db opt_fix_fanout_load true
set_db cts_buffer_cells {CLKBUFX2}
set_db cts_clock_gating_cells {ICGX1}
puts "create_clock_tree_spec" 
create_clock_tree_spec
puts "clock_opt_design -hold -timing_debug_report" 
clock_opt_design -hold -timing_debug_report
puts "write_db pre_add_fillers" 
write_db pre_add_fillers
puts "ln -sfn pre_add_fillers latest" 
ln -sfn pre_add_fillers latest
set_db add_fillers_cells "FILL0 FILL1 FILL4 FILL9 FILL16 FILL25 FILL36"
puts "add_fillers" 
add_fillers
puts "write_db pre_route_design" 
write_db pre_route_design
puts "ln -sfn pre_route_design latest" 
ln -sfn pre_route_design latest
puts "set_db design_express_route true" 
set_db design_express_route true
puts "route_design" 
route_design
puts "write_db pre_opt_design" 
write_db pre_opt_design
puts "ln -sfn pre_opt_design latest" 
ln -sfn pre_opt_design latest
set_db opt_post_route_hold_recovery auto
set_db opt_post_route_fix_si_transitions true
set_db opt_verbose true
set_db opt_detail_drv_failure_reason true
set_db opt_sequential_genus_restructure_report_failure_reason true
puts "opt_design -post_route -setup -hold -expanded_views -timing_debug_report" 
opt_design -post_route -setup -hold -expanded_views -timing_debug_report
puts "write_db pre_write_regs" 
write_db pre_write_regs
puts "ln -sfn pre_write_regs latest" 
ln -sfn pre_write_regs latest

        set write_cells_ir "./find_regs_cells.json"
        set write_cells_ir [open $write_cells_ir "w"]
        puts $write_cells_ir "\["

        set refs [get_db [get_db lib_cells -if .is_sequential==true] .base_name]

        set len [llength $refs]

        for {set i 0} {$i < [llength $refs]} {incr i} {
            if {$i == $len - 1} {
                puts $write_cells_ir "    \"[lindex $refs $i]\""
            } else {
                puts $write_cells_ir "    \"[lindex $refs $i]\","
            }
        }

        puts $write_cells_ir "\]"
        close $write_cells_ir
        set write_regs_ir "./find_regs_paths.json"
        set write_regs_ir [open $write_regs_ir "w"]
        puts $write_regs_ir "\["

        set regs [get_db [get_db [all_registers -edge_triggered -output_pins] -if .direction==out] .name]

        set len [llength $regs]

        for {set i 0} {$i < [llength $regs]} {incr i} {
            #regsub -all {/} [lindex $regs $i] . myreg
            set myreg [lindex $regs $i]
            if {$i == $len - 1} {
                puts $write_regs_ir "    \"$myreg\""
            } else {
                puts $write_regs_ir "    \"$myreg\","
            }
        }

        puts $write_regs_ir "\]"

        close $write_regs_ir
        
puts "write_db pre_sky130_connect_nets2" 
write_db pre_sky130_connect_nets2
puts "ln -sfn pre_sky130_connect_nets2 latest" 
ln -sfn pre_sky130_connect_nets2 latest
puts "write_db pre_write_design" 
write_db pre_write_design
puts "ln -sfn pre_write_design latest" 
ln -sfn pre_write_design latest
set_db timing_enable_simultaneous_setup_hold_mode true
puts "write_db caliptra_top_FINAL -def -verilog" 
write_db caliptra_top_FINAL -def -verilog
puts "set_db write_stream_virtual_connection false" 
set_db write_stream_virtual_connection false
puts "write_netlist /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.lvs.v -top_module_first -top_module caliptra_top -exclude_leaf_cells -phys -flat -exclude_insts_of_cells {  } " 
write_netlist /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.lvs.v -top_module_first -top_module caliptra_top -exclude_leaf_cells -phys -flat -exclude_insts_of_cells {  } 
puts "write_netlist /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.sim.v -top_module_first -top_module caliptra_top -exclude_leaf_cells -exclude_insts_of_cells {  } " 
write_netlist /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.sim.v -top_module_first -top_module caliptra_top -exclude_leaf_cells -exclude_insts_of_cells {  } 
puts "write_stream -mode ALL -format stream -map_file /home/ff/eecs151/fa24/hammer/hammer/technology/sky130/sky130_lefpin.map -uniquify_cell_names -merge { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/gds/sky130_scl_9T.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.gds }  /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.gds" 
write_stream -mode ALL -format stream -map_file /home/ff/eecs151/fa24/hammer/hammer/technology/sky130/sky130_lefpin.map -uniquify_cell_names -merge { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/gds/sky130_scl_9T.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.gds /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.gds }  /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.gds
puts "write_sdf -max_view ss_100C_1v60.setup_view -min_view ff_n40C_1v95.hold_view  /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.par.sdf" 
write_sdf -max_view ss_100C_1v60.setup_view -min_view ff_n40C_1v95.hold_view  /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.par.sdf
puts "set_db extract_rc_coupled true" 
set_db extract_rc_coupled true
puts "extract_rc" 
extract_rc
puts "write_parasitics -spef_file /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.ss_100C_1v60.par.spef -rc_corner ss_100C_1v60.setup_rc" 
write_parasitics -spef_file /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.ss_100C_1v60.par.spef -rc_corner ss_100C_1v60.setup_rc
puts "write_parasitics -spef_file /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.ff_n40C_1v95.par.spef -rc_corner ff_n40C_1v95.hold_rc" 
write_parasitics -spef_file /scratch/cs199-cfh/sky130-hammer/build/par-rundir/caliptra_top.ff_n40C_1v95.par.spef -rc_corner ff_n40C_1v95.hold_rc
puts "write_db post_write_design" 
write_db post_write_design
puts "ln -sfn post_write_design latest" 
ln -sfn post_write_design latest
puts "exit" 
exit