# SPDX-License-Identifier: PMPL-1.0-or-later
# Makefile for FormBD NIF

# Erlang paths
ERL_INCLUDE = $(shell erl -eval 'io:format("~s", [code:root_dir()])' -s init stop -noshell)/erts-$(shell erl -eval 'io:format("~s", [erlang:system_info(version)])' -s init stop -noshell)/include

# FormBD library path
FORMBD_LIB_DIR = ../../../formbd/ffi/zig/zig-out/lib

# Compiler flags
CFLAGS = -fPIC -O2 -Wall -I$(ERL_INCLUDE)
LDFLAGS = -shared -L$(FORMBD_LIB_DIR) -lformbd

# Output
TARGET = ../priv/formbd_nif.so

.PHONY: all clean

all: $(TARGET)

$(TARGET): formbd_nif.c
	@mkdir -p ../priv
	$(CC) $(CFLAGS) formbd_nif.c -o $(TARGET) $(LDFLAGS)
	@echo "Built $(TARGET)"

clean:
	rm -f $(TARGET)
	rm -rf ../priv
