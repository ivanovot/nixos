{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      alacritty 
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