{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    nh
    nftables
    pulseaudio
    bluez
    glib
    dconf
    gsettings-desktop-schemas
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xwayland-satellite
    dxvk
    cups-pk-helper
    android-tools
    speedtest-cli
    vkmark
    cudaPackages.cudatoolkit
  ];

  services.ollama.enable = true;
}
