{ config, pkgs, inputs, lib, ... }:

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

  # Enable Plasma 
  services.desktopManager.plasma6.enable = true;

  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  # };

  environment.systemPackages = with pkgs; [
  nautilus

  (runCommandLocal "nautilus-portal" {} ''
    mkdir -p $out/share/xdg-desktop-portal/portals

    cat > $out/share/xdg-desktop-portal/portals/nautilus.portal <<EOF
[portal]
DBusName=org.gnome.Nautilus
Interfaces=org.freedesktop.impl.portal.FileChooser
EOF
  '')
];
xdg.portal = {
  enable = true;

  extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

  config.niri = {
    default = lib.mkForce [
      "gnome"
      "gtk"
    ];

    "org.freedesktop.impl.portal.FileChooser" = lib.mkForce [
      "nautilus"
    ];
  };
};
environment.variables = {
  QT_QPA_PLATFORMTHEME = "gtk3";
};
}
