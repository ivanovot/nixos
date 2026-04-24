{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
      bluez
      claude-code
      cudaPackages.cudatoolkit
      cups-pk-helper
      dxvk
      nh
      nftables
      nodejs
      jdk21
      python3
      wl-clipboard
      xwayland-satellite
      pulseaudio
    ];
}