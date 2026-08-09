{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
        cbonsai
        cmatrix
        cava
        setrixtui
        ducksay
        fastfetch
        pyroclear
    ];
}
