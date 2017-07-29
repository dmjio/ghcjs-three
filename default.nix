{ pkgs ? import <nixpkgs> {} }:
  pkgs.haskell.packages.ghcjs.callPackage ./ghcjs-three.nix {}
