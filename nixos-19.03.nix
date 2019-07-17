let
  nixpkgs = builtins.fetchTarball "channel:nixos-19.03";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
  pkgs.hello
