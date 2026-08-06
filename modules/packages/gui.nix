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

    # Работа и учёба
    vscode
    obsidian
    onlyoffice-desktopeditors

    # Система

    # Игры
    steam
    prismlauncher
    gamescope

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
