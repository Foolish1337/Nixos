{ config, pkgs, lib, inputs, ... }: {
  imports = [
    ../../modules/home-manager/wm/hyprland/home.nix
  ];

  home.username = "death";
  home.homeDirectory = "/home/death";

  home.packages = with pkgs; [
    # Utilities
    wike        # Wikipedia Viewer
    pavucontrol # Sound

    # Configuring Mouse / Keyboard / Joysticks #
    piper
    antimicrox
  ];

  home.file = {
  };

  home.sessionVariables = {
    
  };

  programs.home-manager.enable = true;

  home.stateVersion = "23.11"; # Please read the comment before changing.
}
