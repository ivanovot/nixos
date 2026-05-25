{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
        curl
        git
        zip
        unzip
        lsd
        stow
        tree
        wget
        bat
        eza
        wl-clipboard
        android-tools
    ];
    # services.ollama.enable = true;
}
