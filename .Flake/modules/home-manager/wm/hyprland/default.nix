{ inputs, outputs, lib, config, pkgs, ... }: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };

  services.xserver = {
    enable = true;
    layout = "gb";
    xkbVariant = "";

    displayManager {
      autoLogin = {
        enable = false;
      };

      sddm = {
        enable = true;
        wayland = true;
      };
    };
  };
}