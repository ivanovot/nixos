{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Базовые CLI-утилиты
    curl
    wget
    git
    git-lfs
    gitnuro
    zip
    unzip

    # Навигация и работа с файлами
    tree
    eza
    lsd
    bat

    opencode

    # Настройка окружения
    stow
    wl-clipboard
    konsave

    # Специализированное
    android-tools
    speedtest-cli
    vkmark
  ];

  services.ollama.enable = true;
}
