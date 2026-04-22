{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # CLI tools
    wget
    curl
    git
    stow
    tree
    lsd
    
    
    cava
    fastfetch
    cbonsai
    cmatrix
    

    # Terminal applications
    (btop.override { cudaSupport = true; })
    nvtopPackages.nvidia
    htop
    yazi
    micro
    vim
    nano

    # System / Nix tools
    nh
    xwayland-satellite
    dxvk
    cups-pk-helper
    wl-clipboard
    nftables
    bluez
    nodejs
    claude-code
    python3
    cudaPackages.cudatoolkit

    # Terminal emulator
    alacritty
    kitty

    # GUI applications
    vscode
    # firefox
    (blender.override {cudaSupport = true; })
    obsidian
    discord
    # obs-studio
    # throne
    steam
    qbittorrent

    adwaita-qt
    gnome-themes-extra
    papirus-icon-theme
  ];
  

  services = {

    ollama = {
      enable = true;
      package = pkgs.ollama-cuda;
      };

    openssh.enable = true;

    flatpak.enable = true;
  };

  virtualisation.waydroid.enable = true;

  fonts.packages = with pkgs; [
  nerd-fonts.hack
  nerd-fonts.noto
  nerd-fonts.arimo
  nerd-fonts.jetbrains-mono
];

nix.settings.substituters = [
  "https://cache.nixos.org"
  "https://nix-community.cachix.org"
];
}
