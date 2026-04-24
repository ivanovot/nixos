{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      # (btop.override { cudaSupport = true; })
      btop
      htop
      micro
      nano
      nvtopPackages.nvidia
      vim
      yazi
      fzf
      fastfetch
    ];
}