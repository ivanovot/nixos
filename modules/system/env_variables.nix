{ config, lib, pkgs, ... }:

{
  environment.variables = {
    BROWSER = "zen-browser";
  };
}