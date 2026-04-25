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
    ];
    # services.ollama.enable = true;
}