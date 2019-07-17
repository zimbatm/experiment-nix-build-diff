let
  nixpkgs = builtins.fetchTarball "channel:nixos-unstable";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
  pkgs.hello
