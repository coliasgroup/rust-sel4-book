#
# Copyright 2024, Colias Group, LLC
#
# SPDX-License-Identifier: BSD-2-Clause
#

ifeq ($(IN_NIX_SHELL),)
	run_in_nix_shell := nix-shell -A shell --run
else
	run_in_nix_shell := $(SHELL) -c
endif


.PHONY: none
none:

.PHONY: clean
clean:
	rm -rf book

.PHONY: shell
shell:
	nix-shell -A shell

.PHONY: build
build:
	$(run_in_nix_shell) "mdbook build"

.PHONY: check
check:
	$(run_in_nix_shell) "mdbook test && linkchecker book"

.PHONY: open
open:
	open book/index.html
