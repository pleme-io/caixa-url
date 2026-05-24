# nix/modules/darwin.nix — auto-generated from rust-url.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.rust-url; in {
  options.services.rust-url = {
    enable = lib.mkEnableOption "rust-url";
    package = lib.mkOption { type = lib.types.package; default = pkgs.rust-url or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
