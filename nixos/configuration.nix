#JBoes Nix Config

{ config, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [  
    #./modules/xserver.nix
    ./modules/hyprland.nix
  ];

  # Enable Flakes and Nix-command
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Enable OpenGL
  hardware.graphics = {
    enable = true;
  };

  # Hostname
  networking.hostName = "nixos";

  # Time zone
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  system.stateVersion = "24.11"; # Did you read the comment?

}
