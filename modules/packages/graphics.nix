{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    gimp
    inkscape
    blender
    obs-studio
    kdePackages.gwenview
    kdePackages.spectacle
    kdePackages.dragon
  ];
}
