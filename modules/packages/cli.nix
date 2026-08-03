{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Базовые CLI-утилиты
    curl
    wget
    git
    git-lfs
    zip
    unzip
    # lsusb
    # lspci

    # Навигация и работа с файлами
    tree
    eza
    lsd
    bat

    # Настройка окружения
    stow
    wl-clipboard
    konsave

    # Специализированное
    android-tools
    speedtest-cli
    vkmark
  ];

  # services.ollama.enable = true;
}
