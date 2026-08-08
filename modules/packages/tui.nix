{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    micro
    nano
    vim
    yazi
    fzf
    htop
    btop
    nvtopPackages.nvidia
  ];
}
