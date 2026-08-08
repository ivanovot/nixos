{ config, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.self.overlays.default
  ];

  imports = [
    ./modules/default.nix
    /etc/nixos/hardware-configuration.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
}
