# ==============================================================================
#  Copyright (C) 2026 Regavaka Project.
#  Licensed under the GNU General Public License v3.0.
#  
#  Regavaka Automated Build System Framework
# ==============================================================================

# Toolchain definitions
CC      = gcc
CFLAGS  = -Wall -Wextra -Iinclude -O2 -std=c99
RM      = rm -f

# Target binary name
TARGET  = bin/regavaka_engine

# Source and Object files architecture
SRCS    = src/decoy.c src/hardware.c
OBJS    = $(SRCS:.c=.o)

.PHONY: all clean directories

# Default build target
all: directories $(TARGET)

# Create output binary directory dynamically
directories:
	@mkdir -p bin

# Link object files into the final executable binary
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
	@echo "[SUCCESS] Regavaka Deception Engine compiled successfully: $(TARGET)"

# Compile source source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Purge and cleanup generated build binaries
clean:
	$(RM) $(OBJS) $(TARGET)
	@rm -rf bin
	@echo "[CLEAN] Build workspace artifacts successfully removed."
