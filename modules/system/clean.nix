{ config, lib, pkgs, ... }:

{
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-generations +10";
  };

  # nix.settings.auto-optimise-store = true;
  nix.optimise.automatic = true;
}