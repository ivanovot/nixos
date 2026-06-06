{ config, lib, pkgs, ... }:

{
  nix.settings = {
  substituters = [
    "https://cache.nixos-cuda.org"
  ];
  trusted-public-keys = [
    "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
  ];
};

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  boot.kernelParams = [
    "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
    "nvidia.NVreg_TemporaryFilePath=/var/tmp"
  ];

  environment.variables = {
    __GL_GSYNC_ALLOWED = "0";
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    gsp.enable = false;
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
