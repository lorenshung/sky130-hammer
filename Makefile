#########################################################################################
# vlsi makefile
#########################################################################################

#########################################################################################
# general path variables
#########################################################################################
base_dir=$(abspath ..)
vlsi_dir=$(abspath .)
sim_dir=$(abspath .)
CALIPTRA_ROOT ?= $(abspath ../caliptra-rtl)
export CALIPTRA_ROOT

#########################################################################################
# vlsi types and rules
#########################################################################################
sim_name            ?= vcs # needed for GenerateSimFiles, but is unused
tech_name           ?= sky130
tech_dir            ?= $(if $(filter $(tech_name), asap7 saed32), $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name))

SMEMS_COMP         ?= $(tech_dir)/sram-compiler.json
SMEMS_CACHE        ?= $(tech_dir)/sram-cache.json
SMEMS_HAMMER       ?= $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name)sram-cache.json
ifeq ($(tech_name),asap7)
	MACROCOMPILER_MODE ?= --mode synflops
else
	MACROCOMPILER_MODE ?= -l $(SMEMS_CACHE) -hir $(SMEMS_HAMMER)
endif


OBJ_DIR             ?= $(vlsi_dir)/build
ENV_YML             ?= $(vlsi_dir)/inst-env.yml
TECH_CONF           ?= $(vlsi_dir)/sky130.yml

DESIGN_SYN_CONF        ?= $(vlsi_dir)/syn.yml
DESIGN_PAR_CONF        ?= $(vlsi_dir)/par.yml
DESIGN_SIM_RTL_CONF    ?= $(vlsi_dir)/sim-rtl.yml
DESIGN_SIM_GL_SYN_CONF ?= $(vlsi_dir)/sim-gl-syn.yml
DESIGN_SIM_GL_PAR_CONF ?= $(vlsi_dir)/sim-gl-par.yml

SRAM_CONF           ?= $(OBJ_DIR)/sram_generator-output.json
OUTPUT_SYN_DB       ?= $(OBJ_DIR)/syn-rundir/syn-output-full.json
INPUT_PAR_DB        ?= $(OBJ_DIR)/par-input.json
OUTPUT_PAR_DB       ?= $(OBJ_DIR)/par-rundir/par-output-full.json
INPUT_DRC_DB        ?= $(OBJ_DIR)/drc-input.json
INPUT_LVS_DB        ?= $(OBJ_DIR)/lvs-input.json
INPUT_SIM_GL_SYN_DB ?= $(OBJ_DIR)/syn-to-sim_input.json
INPUT_SIM_GL_PAR_DB ?= $(OBJ_DIR)/par-to-sim_input.json
OUTPUT_SIM_DB		?= $(OBJ_DIR)/sim-rundir/sim-output-full.json
INPUT_PWR_SIM_GL_DB ?= $(OBJ_DIR)/sim-to-power_input.json
INPUT_PWR_PAR_DB    ?= $(OBJ_DIR)/par-to-power_input.json
HAMMER_EXEC         ?= $(vlsi_dir)/project-vlsi

#########################################################################################
# general rules
#########################################################################################
.PHONY: default
default: all

all: drc lvs

#########################################################################################
# AUTO BUILD FLOW
#########################################################################################

HAMMER_D_MK = $(OBJ_DIR)/hammer.d

.PHONY: buildfile
buildfile: $(HAMMER_D_MK)

$(HAMMER_D_MK): $(SRAM_CONF)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_SYN_CONF) -p $(DESIGN_PAR_CONF) -p $(DESIGN_SIM_RTL_CONF) -p $(DESIGN_SIM_GL_SYN_CONF) -p $(DESIGN_SIM_GL_PAR_CONF) --obj_dir $(OBJ_DIR) build

MAKE = make

#########################################################################################
# RTL Sim
#########################################################################################

.PHONY: sim-rtl
sim-rtl: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_SIM_RTL_CONF) --obj_dir $(OBJ_DIR) sim
	make runtest

#########################################################################################
# Post-Synthesis Gate Level Sim
#########################################################################################

.PHONY: sim-gl-syn
sim-gl-syn: $(HAMMER_D_MK) $(INPUT_SIM_GL_SYN_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_GL_SYN_CONF) -p $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) sim
	make runtest
#########################################################################################
# Post-PAR Gate Level Sim
#########################################################################################

.PHONY: sim-gl-par
sim-gl-par: $(HAMMER_D_MK) $(INPUT_SIM_GL_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_GL_PAR_CONF) -p $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) sim
	make runtest

#########################################################################################
# Standalone Power Estimation
#########################################################################################

.PHONY: power
power: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_GL_PAR_CONF) --obj_dir $(OBJ_DIR) power

#########################################################################################
# Post-PAR Power Estimation
#########################################################################################

.PHONY: power-par
power-par: $(HAMMER_D_MK) $(INPUT_PWR_SIM_GL_DB) $(INPUT_PWR_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(INPUT_PWR_SIM_GL_DB) -p $(INPUT_PWR_PAR_DB) --obj_dir $(OBJ_DIR) power

#########################################################################################
# Synthesis
#########################################################################################

.PHONY: syn
$(OUTPUT_SYN_DB) syn: $(HAMMER_D_MK) $(DESIGN_SYN_CONF)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_SYN_CONF) --obj_dir $(OBJ_DIR) syn

#########################################################################################
# Synthesis to PAR
#########################################################################################

.PHONY: syn-to-par
$(INPUT_PAR_DB) syn-to-par: $(HAMMER_D_MK) $(OUTPUT_SYN_DB) $(DESIGN_PAR_CONF)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -p $(DESIGN_SYN_CONF) -p $(DESIGN_PAR_CONF) -o $(INPUT_PAR_DB) --obj_dir $(OBJ_DIR) syn_to_par

#########################################################################################
# Synthesis to Sim
#########################################################################################

.PHONY: syn-to-sim
$(INPUT_SIM_GL_SYN_DB) syn-to-sim: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -o $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) syn_to_sim

#########################################################################################
# PAR
#########################################################################################

.PHONY: par
$(OUTPUT_PAR_DB) par: $(HAMMER_D_MK) $(INPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(INPUT_PAR_DB) --obj_dir $(OBJ_DIR) par

#########################################################################################
# PAR to DRC
#########################################################################################

.PHONY: par-to-drc
par-to-drc: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_DRC_DB) --obj_dir $(OBJ_DIR) par_to_drc

#########################################################################################
# PAR to LVS
#########################################################################################

.PHONY: par-to-lvs
par-to-lvs: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_LVS_DB) --obj_dir $(OBJ_DIR) par_to_lvs

#########################################################################################
# PAR to Sim
#########################################################################################

.PHONY: par-to-sim
$(INPUT_SIM_GL_PAR_DB) par-to-sim: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) par_to_sim

#########################################################################################
# Sim to Power
#########################################################################################

.PHONY: sim-to-power
$(INPUT_PWR_SIM_GL_DB) sim-to-power: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_SIM_DB) -o $(INPUT_PWR_SIM_GL_DB) --obj_dir $(OBJ_DIR) sim_to_power

#########################################################################################
# PAR to Power
#########################################################################################

.PHONY: par-to-power
$(INPUT_PWR_PAR_DB) par-to-power: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_PWR_PAR_DB) --obj_dir $(OBJ_DIR) par_to_power

#########################################################################################
# DRC
#########################################################################################

.PHONY: drc
drc: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) drc

#########################################################################################
# LVS
#########################################################################################

.PHONY: lvs
lvs: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) lvs

#########################################################################################
# Redo Synthesis
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-syn: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-syn

#########################################################################################
# Redo PAR
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-par: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-par

#########################################################################################
# SRAM Compiler
#########################################################################################

.PHONY: srams
$(SRAM_CONF) srams:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SYN_CONF) -p $(DESIGN_PAR_CONF) --obj_dir $(OBJ_DIR) sram_generator
	cp output.json $(SRAM_CONF)

#########################################################################################
# general cleanup rule
#########################################################################################
# Don't remove the extracted PDK dir, otherwise we have to build it again
.PHONY: clean
clean:
	rm -rf $(HAMMER_D_MK) $(OBJ_DIR)/*rundir $(OBJ_DIR)/*.json hammer-vlsi*.log __pycache__ output.json *_output

submission: par
	mkdir -p ./submission
	python3 ./scripts/fom.py