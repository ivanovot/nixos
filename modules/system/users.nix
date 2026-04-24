{ config, ... }:

{
  users.users.timo = {
    isNormalUser = true;
    description = "timo";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [];
  };
}