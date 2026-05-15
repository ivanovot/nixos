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

#   programs.dank-material-shell.greeter = {
#     enable = true;
#     compositor.name = "niri";  # Or "hyprland" or "sway"
#     configHome = "/home/timo";
#   };
#   services.displayManager.dms-greeter = {
#     enable = true;
#     compositor.name = "niri";  # Or "hyprland" or "sway"
#  };

  services.displayManager.gdm.enable = true;
  
  programs.xwayland.enable = true;

  services.xserver = {
    xkb = {
      layout = "us, ru";
      variant = "";
    };
    displayManager.startx.enable = false;
    enable = true;
  };
}
