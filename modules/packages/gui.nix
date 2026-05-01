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
    ];
}
