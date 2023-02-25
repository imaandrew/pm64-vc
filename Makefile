ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

# If 0, tells the console to chill out. (Quiets the make process.)
VERBOSE ?= 0

# If MAPGENFLAG set to 1, tells LDFLAGS to generate a mapfile, which makes linking take slightly longer.
MAPGENFLAG ?= 1

ifeq ($(VERBOSE),0)
  QUIET := @
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

TARGET := 00000001

BUILD_DIR := build

# Inputs
SRC_DIRS := $(shell find src -type d)
ASM_DIRS := $(shell find asm -type d -not -path "asm/non_matchings*") $(shell find data -type d)

C_FILES       := $(foreach dir,$(SRC_DIRS), $(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(ASM_DIRS), $(wildcard $(dir)/*.s))
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/$(TARGET).app
ELF     := $(DOL:.app=.elf)
MAP     := $(BUILD_DIR)/$(TARGET).map

ifeq ($(MAPGENFLAG),1)
  MAPGEN := -map $(MAP)
endif

include obj_files.mk

O_FILES := $(ALL)
DEPENDS := $(O_FILES:.o=.d)
# If a specific .o file is passed as a target, also process its deps
DEPENDS += $(MAKECMDGOALS:.o=.d)
GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(C_FILES)
GLOBAL_ASM_O_FILES = $(addprefix $(BUILD_DIR)/,$(GLOBAL_ASM_C_FILES:.c=.o))


#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 3.0
MWLD_VERSION := 3.0

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
  PYTHON  := python
else
  WIBO   := $(shell command -v wibo 2> /dev/null)
  ifdef WIBO
    WINE ?= wibo
  else
    WINE ?= wine
  endif
  # Disable wine debug output for cleanliness
  export WINEDEBUG ?= -all
  # Default devkitPPC path
  DEVKITPPC ?= /opt/devkitpro/devkitPPC
  DEPENDS   := $(DEPENDS:.d=.d.unix)
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp -P
  PYTHON  := python3
endif
CC      = $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/$(MWLD_VERSION)/mwldeppc.exe
CC_2.7  = $(WINE) tools/mwcc_compiler/2.7/mwcceppc.exe
ELF2DOL := tools/elf2dol
SHA1SUM := sha1sum

ASM_PROCESSOR_DIR := tools/asm_processor
ASM_PROCESSOR := $(ASM_PROCESSOR_DIR)/compile.sh

# Options
INCLUDES := -i include/
ASM_INCLUDES := -I include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults -w off
endif
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -sdata 48 -sdata2 8 $(INCLUDES)

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
endif

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools

$(LDSCRIPT): ldscript.lcf
	$(QUIET) $(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHA1SUM) -c $(TARGET).sha1

clean:
	rm -f -d -r build
	find . -name '*.o' -exec rm {} +
	find . -name 'ctx.c' -exec rm {} +
	find ./include -name "*.s" -type f -delete
	$(MAKE) -C tools clean
tools:
	$(MAKE) -C tools

# ELF creation makefile instructions
$(ELF): $(O_FILES) $(GLOBAL_ASM_O_FILES) $(LDSCRIPT)
	@echo Linking ELF $@
	$(QUIET) $(RM) -rf $(ASM_PROCESSOR_DIR)/tmp
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files

$(GLOBAL_ASM_O_FILES) : BUILD_C := $(QUIET) $(ASM_PROCESSOR) "$(CC) $(CFLAGS) $(OPT_FLAGS)" "$(AS) $(ASFLAGS)"

BUILD_C ?= $(CC) $(CFLAGS) $(OPT_FLAGS) -c -o

%.d.unix: %.d $(TRANSFORM_DEP)
	@echo Processing $<
	$(QUIET) $(PYTHON) $(TRANSFORM_DEP) $< $@

-include $(DEPENDS)

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/src/MetroTRK/%.o : CC := $(CC_2.7)

$(GLOBAL_ASM_O_FILES) : BUILD_C := $(ASM_PROCESSOR) "$(CC) $(CFLAGS) $(OPT_FLAGS)" "$(AS) $(ASFLAGS)"

BUILD_C ?= $(CC) $(CFLAGS) $(OPT_FLAGS) -c -o

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) mkdir -p $(dir $@)
	$(QUIET) $(BUILD_C) $@ $<

### Extremely lazy recipes for generating context ###
# Example usage: make build/pikmin2.usa/src/plugProjectYamashitaU/farmMgr.h
$(BUILD_DIR)/%.h: %.c
	@echo "Compiling and generating context for " $<
	$(QUIET) $(CC) $(CFLAGS) -E -c -o $@ $<


### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
