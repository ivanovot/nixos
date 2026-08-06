{ config, pkgs, inputs, lib, ... }:

{
  programs.xwayland.enable = true;

  services.xserver = {
    xkb = {
      layout = "us, ru";
      variant = "";
    };
    displayManager.startx.enable = false;
    enable = true;
  };

  # Enable Plasma 
  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    # оставляем пустым или добавляем то, что точно не нужно
  ];

  # Устанавливаем только нужные программы
  environment.systemPackages = with pkgs.kdePackages; [
    ark             # Архиватор (ZIP, 7z, tar, rar)
    dolphin         # Файловый менеджер
    gwenview        # Просмотрщик изображений
    kate            # Текстовый редактор
    konsole         # Терминал
    okular          # Просмотр документов PDF/DjVu/EPUB
    elisa           # Музыкальный плеер
    kcalc           # Калькулятор
    kmail           # Почтовый клиент
    dragon          # Видеоплеер
    spectacle       # Скриншоты
    print-manager   # Управление принтерами
    partitionmanager # Управление разделами дисков
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
}
