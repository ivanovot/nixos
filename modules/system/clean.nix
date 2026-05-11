{ config, lib, pkgs, ... }:

{
  nix.gc.persistent = true;

  programs.nh = {
    enable = true;

    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep 5";
    };
  };

  systemd.services.nh-clean-shutdown = {
    description = "Clean old Nix generations on shutdown";

    wantedBy = [ "multi-user.target" ];

    before = [
      "shutdown.target"
      "reboot.target"
      "halt.target"
    ];

    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;

      ExecStart = "${pkgs.coreutils}/bin/true";

      ExecStop = pkgs.writeShellScript "nh-clean" ''
        ${pkgs.nh}/bin/nh clean all --keep 5
      '';
    };
  };
}