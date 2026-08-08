{ config, pkgs, ... }:

{
  imports = [
    ./packages/core.nix
    ./packages/dev.nix
    ./packages/desktop.nix
    ./packages/media.nix
    ./packages/network.nix
    ./packages/gaming.nix
    ./packages/tui.nix
    ./packages/system-utils.nix
    ./packages/themes.nix
    ./packages/toys.nix
    ./packages/flatpak.nix

    ./system/bluetooth.nix
    ./system/boot.nix
    ./system/clean.nix
    ./system/datetime.nix
    ./system/disk.nix
    ./system/env-variables.nix
    ./system/network.nix
    ./system/nix.nix
    ./system/nvidia.nix
    ./system/print.nix
    ./system/sound.nix
    ./system/users.nix
  ];
}