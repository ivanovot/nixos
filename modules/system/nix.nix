{ config, lib, pkgs, ... }:

{
  system.stateVersion = "26.05";

  nix.settings = {
    # Загрузка из binary caches
    max-substitution-jobs = 12;
    http-connections = 24;
    download-attempts = 5;

    # Локальная компиляция
    max-jobs = 2;
    cores = 6;

    substituters = [
      "https://cache.nixos.org"
      "https://cache.nixos-cuda.org"
      "https://nix-community.cachix.org"
    ];

    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
    ];
  };
}