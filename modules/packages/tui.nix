{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Редакторы
    micro
    nano
    vim

    # Терминал и навигация
    yazi
    fzf
    fastfetch

    # Мониторинг системы
    htop
    btop
    nvtopPackages.nvidia
  ];
}