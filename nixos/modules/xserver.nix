{
  services.xserver = {
    # nvidia drivers
    videoDrivers = ["nvidia"];
    enable = true;
    
    # displayManager = {
    #   autoLogin.enable = true;
    #   autoLogin.user = "jboe";
    #   lightdm.enable = true;
    # };
  
    xkb.layout = "us";
    xkb.variant = "";

    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}
