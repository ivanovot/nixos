{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    throne
  ];

  programs.throne = {
    enable = true;
    tunMode.enable = true;
  };
}
