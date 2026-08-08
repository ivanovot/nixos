{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs
    jdk21
    python3
    go
    gcc
    claude-code
  ];
}
