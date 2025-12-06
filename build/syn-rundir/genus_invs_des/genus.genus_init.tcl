################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/05/2025 20:36:28
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}
::legacy::set_attribute -quiet init_mmmc_version 2 /

read_mmmc genus_invs_des/genus.mmmc.tcl

read_physical -lef {/home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /home/ff/eecs151/fa24/pdk/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w32/sram22_512x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w32/sram22_64x32m4w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x64m4w8/sram22_512x64m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_512x32m4w8/sram22_512x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x24m4w24/sram22_64x24m4w24.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_256x32m4w8/sram22_256x32m4w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x4m4w2/sram22_64x4m4w2.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_2048x32m8w8/sram22_2048x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w32/sram22_1024x32m8w32.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_1024x32m8w8/sram22_1024x32m8w8.lef /home/ff/eecs151/fa24/sky130_srams/sram22_sky130_macros/sram22_64x32m4w8/sram22_64x32m4w8.lef}

read_netlist genus_invs_des/genus.v.gz

read_power_intent  -cpf genus_invs_des/genus.cpf

init_design
