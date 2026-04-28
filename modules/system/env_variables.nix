{ config, lib, pkgs, ... }:

{
  environment.variables = {
    XDG_DATA_DIRS = "/run/current-system/sw/share";
  };
}