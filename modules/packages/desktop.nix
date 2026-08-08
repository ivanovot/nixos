{ config, pkgs, inputs, lib, ... }:

{
  programs.xwayland.enable = true;

  services.xserver = {
    xkb = {
      layout = "us, ru";
      variant = "";
    };
    displayManager.startx.enable = false;
    enable = true;
  };

  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    # пусто
  ];

  environment.systemPackages =
  (with pkgs.kdePackages; [
    ark
    dolphin
    gwenview
    kate
    konsole
    okular
    elisa
    kcalc
    kmail
    dragon
    spectacle
    print-manager
    partitionmanager
  ]) ++
  
  (with pkgs; [
    zen-browser
    firefox
    discord
    telegram-desktop
    qbittorrent
  ]);

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
}
