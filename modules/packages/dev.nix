{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs
    jdk21
    python3
    go
    gcc
    claude-code
    git
    git-lfs
    gitnuro
    micro
    nano
    vim
    yazi
    fzf
    opencode
  ];
}
