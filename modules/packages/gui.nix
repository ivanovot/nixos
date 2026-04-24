{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      alacritty 
      kitty
      (blender.override { cudaSupport = true; })
      discord
      qbittorrent
      obsidian
      steam
      prismlauncher
      vscode
    ];
}