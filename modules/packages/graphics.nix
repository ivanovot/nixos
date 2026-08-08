{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    gimp
    blender
    obs-studio
    kdePackages.gwenview
    kdePackages.spectacle
    kdePackages.dragon
  ];
}
