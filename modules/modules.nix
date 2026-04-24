{ config, pkgs, ... }:

{
  imports = [
    ./packages/deskop.nix
    ./packages/overlay.nix

    ./system/bluetooth.nix
    ./system/boot.nix
    ./system/clean.nix
    ./system/datetime.nix
    ./system/env_variables.nix
    ./system/network.nix
    ./system/nix.nix
    ./system/nvidia.nix
    ./system/sound.nix
    ./system/tempalte.nix
    ./system/users.nix
  ];
}