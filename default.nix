{ pkgs ? import <nixpkgs> {} }:
  pkgs.haskell.packages.ghcjsHEAD.callPackage ./ghcjs-three.nix {}
