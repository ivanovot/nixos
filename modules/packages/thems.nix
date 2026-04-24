{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      adwaita-qt
      gnome-themes-extra
      papirus-icon-theme
    ];
}