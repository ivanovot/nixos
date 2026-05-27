{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      alacritty
      throne 
      kitty
      blender
      discord
      qbittorrent
      obsidian
      steam
      (pkgs.prismlauncher.override {glfw3-minecraft = pkgs.glfw3-minecraft;})
      gnome-control-center
      gnome-shell
      vscode
      gnome-disk-utility
      onlyoffice-desktopeditors
      zen-browser
      gimp
      nautilus
      # sushi
      imv
      loupe
    ];
}
