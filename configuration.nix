{ config, pkgs, ... }:

{
  imports = [
    ./nix/system.nix
    ./nix/packages.nix
    ./nix/desktop.nix
    ./nix/nvidia.nix
    /etc/nixos/hardware-configuration.nix
  ];
}
