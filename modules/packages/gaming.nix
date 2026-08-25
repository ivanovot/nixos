{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam
    prismlauncher
    gamescope
    dxvk
    vkmark
    BedrockOnLinux
    (heroic.override {
      extraPkgs = pkgs': with pkgs'; [
        gamescope
        gamemode
      ];
    })
  ];
}
