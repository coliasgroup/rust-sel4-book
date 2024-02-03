#
# Copyright 2024, Colias Group, LLC
#
# SPDX-License-Identifier: BSD-2-Clause
#

.PHONY: none
none:

.PHONY: shell
shell:
	nix-shell -A shell

.PHONY: build
build:
	mdbook build
    # mdbook test
    # linkchecker book
