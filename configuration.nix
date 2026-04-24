{ config, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.self.overlays.default
  ];

  imports = [
    ./modules/modules.nix
    /etc/nixos/hardware-configuration.nix
  ];
}
