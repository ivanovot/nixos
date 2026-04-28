{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      bluez
      gsettings-desktop-schemas
      dconf
      glib
      claude-code
      cudaPackages.cudatoolkit
      cups-pk-helper
      dxvk
      nh
      nftables
      nodejs
      jdk21
      python3
      go
      gcc
      wl-clipboard
      xwayland-satellite
      pulseaudio

      xdg-desktop-portal
      xdg-desktop-portal-gtk
    ];
}
