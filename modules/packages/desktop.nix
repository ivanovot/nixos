{ config, pkgs, inputs, ... }:

{
  programs.niri.enable = true;
  programs.dank-material-shell = {

    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    enableSystemMonitoring = true;
    enableVPN = true;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = true;
    enableClipboardPaste = true;
  };
  programs.dsearch = {
    enable = true;

    # Use a custom package (optional)
    package = pkgs.dsearch;

    # Systemd service configuration
    systemd = {
      enable = true;               # Enable systemd user service
      target = "default.target";   # Start with user session
    };
};
  services.displayManager.ly.enable = true;

  programs.xwayland.enable = true;

  services.xserver = {
    xkb = {
      layout = "us, ru";
      variant = "";
    };
    displayManager.startx.enable = false;
    enable = true;
  };
  # services.greetd.enable = true;
}
