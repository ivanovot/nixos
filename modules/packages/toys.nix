{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
        cbonsai
        cmatrix
        cava
        scope-tui
        meowdo
        setrixtui
    ];
}