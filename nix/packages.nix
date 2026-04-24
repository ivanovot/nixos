{ config, pkgs, inputs, ... }:

{
  environment.systemPackages =
    (with pkgs; [
      curl
      git
      lsd
      stow
      tree
      wget

      cbonsai
      cmatrix
      cava
      scope-tui

      (btop.override { cudaSupport = true; })
      htop
      micro
      nano
      nvtopPackages.nvidia
      vim
      yazi
      fzf
      fastfetch

      alacritty
      kitty

      (blender.override { cudaSupport = true; })
      discord

      qbittorrent
      obsidian
      steam
      vscode

      adwaita-qt
      gnome-themes-extra
      papirus-icon-theme

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
    ])
    ++ [
	  inputs.setrixtui.packages.${pkgs.system}.default
	  (pkgs.callPackage /home/timo/rep/Meowdo/default.nix {})      
    ];
}
