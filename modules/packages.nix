{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
  	  # tools
      curl
      git
      lsd
      stow
      tree
      wget
      bat
      eza

	    # toys
      cbonsai
      cmatrix
      cava
      scope-tui
      meowdo
      setrixtui

	    # tui
      (btop.override { cudaSupport = true; })
      htop
      micro
      nano
      nvtopPackages.nvidia
      vim
      yazi
      fzf
      fastfetch

	    # gui
      alacritty 
      kitty
      (blender.override { cudaSupport = true; })
      discord
      qbittorrent
      obsidian
      steam
      prismlauncher
      vscode

      # themes
      adwaita-qt
      gnome-themes-extra
      papirus-icon-theme

	    # system utils
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
