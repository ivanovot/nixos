{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Разработка
    nodejs
    jdk21
    python3
    go
    gcc
    claude-code

    # Система
    nh
    nftables
    wl-clipboard
    pulseaudio
    bluez

    # Интеграция рабочего стола
    glib
    dconf
    gsettings-desktop-schemas
    xdg-desktop-portal
    xdg-desktop-portal-gtk

    # Совместимость
    xwayland-satellite
    dxvk
    cups-pk-helper

    # Специализированное
    cudaPackages.cudatoolkit
  ];
}