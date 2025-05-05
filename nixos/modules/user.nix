{ pkgs, ... }: {
  users.users.jboe = {
    isNormalUser = true;
    description = "JBoeCodes";
    extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
    packages = with pkgs; [];
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "jboe";
}
