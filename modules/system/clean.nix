{ config, ... }:
{
  nix.gc.persistent = true;
  programs.nh = {
    enable = true;

    clean = {
      enable = true;
      dates = "dayly";
      extraArgs = "--keep 5";
    };
  };
}