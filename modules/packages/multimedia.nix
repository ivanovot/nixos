{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.elisa
  ];
}
