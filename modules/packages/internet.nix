{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    zen-browser
    firefox
    discord
    telegram-desktop
    qbittorrent
    throne
    curl
    wget
  ];

  programs.throne = {
    enable = true;
    tunMode.enable = true;
  };
}
