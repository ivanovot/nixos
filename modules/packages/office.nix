{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.okular
    kdePackages.kate
    kdePackages.kmail
    kdePackages.ark

    thunderbird
  ];
}
