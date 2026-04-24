{ config, pkgs, ... }:

{
  imports = [
    ./packages/cli.nix
    ./packages/desktop.nix
    ./packages/flatpak.nix
    ./packages/gui.nix
    ./packages/overlay.nix
    ./packages/system-utils.nix
    ./packages/thems.nix
    ./packages/toys.nix
    ./packages/tui.nix

    ./system/bluetooth.nix
    ./system/boot.nix
    ./system/clean.nix
    ./system/datetime.nix
    ./system/env_variables.nix
    ./system/network.nix
    ./system/nix.nix
    ./system/nvidia.nix
    ./system/sound.nix
    ./system/users.nix
  ];
}