{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    zip
    unzip
    tree
    eza
    lsd
    bat
    stow
    wl-clipboard
    konsave
    htop
    btop
    nvtopPackages.nvidia
    speedtest-cli
  ];
}
