{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium
    firefox    
    telegram-desktop
    kitty
    alacritty
    obs-studio
    rofi
    wofi
    mpv
    discord
    gparted
    obsidian
    zoom-us

    # Proton Apps
    proton-pass
    protonvpn-gui
    protonmail-desktop

    # Gaming
    heroic

    # Music
    spotify
    strawberry
   
    # Coding stuff
    # python
    # (python3.withPackages (ps: with ps; [ requests ]))

    # CLI utils
    neofetch
    wget
    git
    fastfetch
    btop
    htop
    unzip
    ffmpeg
    ranger
    swww

    # GUI utils
    feh
    imv
    dmenu
    screenkey
    mako
    gromit-mpx

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    herbstluftwm
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    polybar
    waybar

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Screenshotting
    grim
    grimblast
    slurp
    flameshot
    swappy

    # Other
    home-manager
    spice-vdagent
    papirus-nord
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
  ];
}
