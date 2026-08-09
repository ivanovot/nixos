{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      adwaita-qt
      gnome-themes-extra
      papirus-icon-theme

      kdePackages.sddm-kcm
    ];

    fonts.packages = with pkgs; [
      corefonts
      nerd-fonts.hack
    ];
}
