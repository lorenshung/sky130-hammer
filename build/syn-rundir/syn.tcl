# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

puts "set_db hdl_error_on_blackbox true" 
set_db hdl_error_on_blackbox true
puts "set_db max_cpus_per_server 4" 
set_db max_cpus_per_server 4
puts "set_multi_cpu_usage -local_cpu 4" 
set_multi_cpu_usage -local_cpu 4
puts "set_db super_thread_debug_jobs true" 
set_db super_thread_debug_jobs true
puts "set_db super_thread_debug_directory super_thread_debug" 
set_db super_thread_debug_directory super_thread_debug
puts "set_db lp_clock_gating_infer_enable  true" 
set_db lp_clock_gating_infer_enable  true
puts "set_db lp_clock_gating_prefix  {CLKGATE}" 
set_db lp_clock_gating_prefix  {CLKGATE}
puts "set_db lp_insert_clock_gating  true" 
set_db lp_insert_clock_gating  true
puts "set_db lp_clock_gating_register_aware true" 
set_db lp_clock_gating_register_aware true
puts "read_mmmc /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/mmmc.tcl" 
read_mmmc /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/mmmc.tcl
puts "read_physical -lef { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef }" 
read_physical -lef { /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef }
puts "read_hdl -sv { /scratch/cs199-cfh/sky130-hammer/src/caliptra_top_preproc.sv }" 
read_hdl -sv { /scratch/cs199-cfh/sky130-hammer/src/caliptra_top_preproc.sv }
puts "elaborate caliptra_top" 
elaborate caliptra_top
puts "init_design -top caliptra_top" 
init_design -top caliptra_top
puts "report_timing -lint -verbose" 
report_timing -lint -verbose
puts "read_power_intent -cpf /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/power_spec.cpf" 
read_power_intent -cpf /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/power_spec.cpf
puts "apply_power_intent -summary" 
apply_power_intent -summary
puts "commit_power_intent" 
commit_power_intent
puts "set_db root: .auto_ungroup none" 
set_db root: .auto_ungroup none
puts "write_db -to_file pre_enable_scl_clk_gating_cell_hook" 
write_db -to_file pre_enable_scl_clk_gating_cell_hook
set_db [get_db lib_cells -if {.base_name == ICGX1}] .avoid false
puts "write_db -to_file pre_syn_generic" 
write_db -to_file pre_syn_generic
set_db cts_buffer_cells {CLKBUFX2}
set_db cts_clock_gating_cells {ICGX1}
puts "syn_generic" 
syn_generic
puts "write_db -to_file pre_syn_map" 
write_db -to_file pre_syn_map
puts "syn_map" 
syn_map
puts "write_db -to_file pre_add_tieoffs" 
write_db -to_file pre_add_tieoffs
puts "write_db -to_file pre_write_regs" 
write_db -to_file pre_write_regs

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
        
puts "write_db -to_file pre_generate_reports" 
write_db -to_file pre_generate_reports
puts "write_reports -directory reports -tag final" 
write_reports -directory reports -tag final
puts "report_timing -unconstrained -max_paths 50 > reports/final_unconstrained.rpt" 
report_timing -unconstrained -max_paths 50 > reports/final_unconstrained.rpt
puts "write_db -to_file pre_write_outputs" 
write_db -to_file pre_write_outputs
puts "write_hdl > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.v" 
write_hdl > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.v
puts "write_template -full -outfile caliptra_top.mapped.scr" 
write_template -full -outfile caliptra_top.mapped.scr
puts "write_sdc -view ss_100C_1v60.setup_view > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdc" 
write_sdc -view ss_100C_1v60.setup_view > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdc
puts "write_sdf > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdf" 
write_sdf > /scratch/cs199-cfh/sky130-hammer/build/syn-rundir/caliptra_top.mapped.sdf
puts "write_design -gzip_files caliptra_top" 
write_design -gzip_files caliptra_top
puts "quit" 
quit