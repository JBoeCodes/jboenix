{
        programs.bash = {
                enable = true;
                shellAliases =
                let
                        flakePath = "~/nix";
                in {
                        rbd = "sudo nixos-rebuild switch --flake ${flakePath}";
                        hms = "home-manager switch --flake ${flakePath}";
                        n = "nano";
                };
        };
}
