# nix/modules/home-manager.nix — auto-generated from rust-url.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.rust-url; in {
  options.programs.rust-url = {
    enable = lib.mkEnableOption "rust-url";
    package = lib.mkOption { type = lib.types.package; default = pkgs.rust-url or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
