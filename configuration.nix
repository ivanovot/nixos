{ config, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.self.overlays.default
  ];

  imports = [
    ./modules/system.nix
    ./modules/packages.nix
    ./modules/desktop.nix
    ./modules/nvidia.nix
    /etc/nixos/hardware-configuration.nix
  ];
}
