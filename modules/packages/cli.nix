{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
        curl
        git
        lsd
        stow
        tree
        wget
        bat
        eza
        wl-copy
        android-tools
    ];
    # services.ollama.enable = true;
}