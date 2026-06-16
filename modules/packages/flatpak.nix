{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  environment.sessionVariables = {
    BROWSER = "zen";
  };
}
