{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Повседневное использование
    zen-browser
    discord
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
    modrinth-app

    # Творчество и контент
    gimp
    blender

    # ВПН
    throne
  ];
}
