{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      adwaita-qt
      gnome-themes-extra
      papirus-icon-theme

      kdePackages.sddm-kcm
    ];

    fonts = {
      fontDir.enable = true;

      packages = with pkgs; [
        corefonts
        nerd-fonts.hack
        
        dejavu_fonts
        liberation_ttf
      ];

      fontconfig = {
        enable = true;
        defaultFonts = {
          sansSerif = [ "Arial" "DejaVu Sans" "Liberation Sans" ];
          serif = [ "Times New Roman" "DejaVu Serif" ];
          monospace = [ "Hack Nerd Font" ];
        };
      };
    };
}
