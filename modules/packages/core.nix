{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    wget
    git
    git-lfs
    gitnuro
    zip
    unzip
    tree
    eza
    lsd
    bat
    opencode
    stow
    wl-clipboard
    konsave
  ];
}
