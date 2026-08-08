{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    gimp
    obs-studio
    blender
  ];
}
