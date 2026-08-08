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

  environment.systemPackages = with pkgs; [
    kdePackages.dolphin
    kdePackages.konsole
    kdePackages.kcalc
    kdePackages.print-manager
    kdePackages.partitionmanager
    nh
    nftables
    pulseaudio
    bluez
    dconf
    gsettings-desktop-schemas
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xwayland-satellite
    cups-pk-helper
    android-tools
    cudaPackages.cudatoolkit
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.ollama.enable = true;
}
