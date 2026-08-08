{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam
    prismlauncher
    gamescope
    dxvk
    vkmark
  ];
}
