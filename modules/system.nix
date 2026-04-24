{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelModules = [
  "br_netfilter"
  "ip_tables"
  "iptable_nat"
  "hid_generic"
  "usbhid"
];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.nftables.enable = true;

  networking.firewall = {
    enable = true;
    backend = "nftables";
  };

  time.timeZone = "Europe/Samara";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  nix.gc.persistent = true;
  programs.nh = {
    enable = true;

    clean = {
      enable = true;
      dates = "dayly";
      extraArgs = "--keep 5";
    };
  };

  users.users.timo = {
    isNormalUser = true;
    description = "timo";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [];
  };

  environment.variables = {
    BROWSER = "zen-browser";
  };
  
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  services.pipewire = {
    enable = true;

    pulse.enable = true;   
    alsa.enable = true;
    jack.enable = true;
  };

  services.xserver = {
    xkb = {
      layout = "us, ru";
      variant = "";
    };
    displayManager.startx.enable = false;
    enable = true;
  };
  services.flatpak.enable = true;

  programs.xwayland.enable = true;
  
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}