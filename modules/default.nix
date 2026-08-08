{ config, pkgs, ... }:

{
  imports = [
    ./packages/graphics.nix
    ./packages/gaming.nix
    ./packages/internet.nix
    ./packages/multimedia.nix
    ./packages/office.nix
    ./packages/dev.nix
    ./packages/system.nix
    ./packages/utils.nix
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