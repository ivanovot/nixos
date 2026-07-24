{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Повседневное использование
    zen-browser
    firefox
    discord
    telegram-desktop
    # telegram-desktop
    qbittorrent
    nautilus
    loupe
    imv

    # Работа и учёба
    vscode
    obsidian
    onlyoffice-desktopeditors

    # Система
    alacritty
    kitty
    gnome-control-center
    gnome-disk-utility
    gnome-shell

    # Игры
    steam
    prismlauncher
    gamescope
    # modrinth-app

    # Творчество и контент
    gimp
    # blender
    obs-studio

    # ВПН
    throne
  ];

  programs.throne = {
    enable = true;
    tunMode.enable = true;
  };
}
