{ config, lib, pkgs, ... }:

{
  networking.hostName = "comp";
  networking.networkmanager.enable = true;
  networking.nftables.enable = true;

  networking.firewall = {
    enable = true;
    backend = "nftables";
  };
}