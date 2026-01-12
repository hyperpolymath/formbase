# SPDX-License-Identifier: AGPL-3.0-or-later
# Makefile for FormDB NIF

.PHONY: all clean test install

# Erlang paths
ERL_INCLUDE_PATH ?= $(shell erl -noshell -eval 'io:format("~s/usr/include", [code:root_dir()])' -s init stop)
ERL_LIB_PATH ?= $(shell erl -noshell -eval 'io:format("~s/usr/lib", [code:root_dir()])' -s init stop)

# FormDB path (set this to your FormDB installation)
FORMDB_PATH ?= $(HOME)/Documents/hyperpolymath-repos/formdb

# Output directory
PRIV_DIR = ../priv

# Zig build options
ZIG_BUILD_FLAGS = -Doptimize=ReleaseSafe

all: $(PRIV_DIR)/formdb_nif.so

$(PRIV_DIR):
	mkdir -p $(PRIV_DIR)

$(PRIV_DIR)/formdb_nif.so: src/formdb_nif.zig $(PRIV_DIR)
	ERL_INCLUDE_PATH=$(ERL_INCLUDE_PATH) zig build $(ZIG_BUILD_FLAGS)

# Build FormDB first if needed
formdb:
	cd $(FORMDB_PATH)/core-zig && zig build

# Compile Erlang module
erl: src/formdb_nif.erl
	erlc -o ../ebin src/formdb_nif.erl

clean:
	rm -rf zig-cache zig-out $(PRIV_DIR)/formdb_nif.so

test:
	zig build test

# Install to system Erlang lib directory
install: all
	cp $(PRIV_DIR)/formdb_nif.so $(ERL_LIB_PATH)/

# Development: build and copy to priv
dev: all erl
	@echo "NIF built successfully"
	@echo "Library: $(PRIV_DIR)/formdb_nif.so"
