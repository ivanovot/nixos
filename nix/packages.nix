{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # CLI tools
    curl
    git
    lsd
    stow
    tree
    wget

    # Toys
    cbonsai
    cmatrix
    cava

    # Terminal applications / system monitoring
    (btop.override { cudaSupport = true; })
    htop
    micro
    nano
    nvtopPackages.nvidia
    vim
    yazi

    # Terminal emulators
    alacritty
    kitty

    # GUI applications
    (blender.override { cudaSupport = true; })
    discord
    obsidian
    qbittorrent
    steam
    vscode

    # Themes / fonts
    adwaita-qt
    gnome-themes-extra
    papirus-icon-theme
    
    # System / Nix tools
    bluez
    claude-code
    cudaPackages.cudatoolkit
    cups-pk-helper
    dxvk
    nh
    nftables
    nodejs
    python3
    wl-clipboard
    xwayland-satellite
  ];
  

  services = {

    ollama = {
      enable = true;
      package = pkgs.ollama-cuda;
      };

    openssh.enable = true;

    flatpak.enable = true;
  };

  # virtualisation.waydroid.enable = true;

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
