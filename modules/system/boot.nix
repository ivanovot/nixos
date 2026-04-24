{ config, lib, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelModules = [
  "br_netfilter"
  "ip_tables"
  "iptable_nat"
  "hid_generic"
  "usbhid"
];
}