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
      prismlauncher
      vscode
      gnome-disk-utility
      onlyoffice-desktopeditors
      zen-browser
      gimp
      nautilus
      sushi
    ];
}
