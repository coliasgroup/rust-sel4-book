#
# Copyright 2024, Colias Group, LLC
#
# SPDX-License-Identifier: BSD-2-Clause
#

let

  nixpkgsPath =
    let
      rev = "269ce7215bb5b436546786e8d354d37903e102a8";
    in
      builtins.fetchTarball {
        url = "https://github.com/nix/nixpkgs/archive/${rev}.tar.gz";
        sha256 = "sha256:0ad2c7vlr9fidzjjg8szigfhmp1gvlf62ckd6cir8ymrxc93pby7";
      };

  pkgs = import nixpkgsPath {};

  inherit (pkgs) lib;

in {
  inherit pkgs;

  shell = with pkgs; mkShell {
    nativeBuildInputs = [
      mdbook
      linkchecker
      rustup
    ];
  };
}
