{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    nix
    ripgrep
  ];

  imports =
    with builtins;
    map (fn: ./${fn}) (filter (fn: fn != "default.nix") (attrNames (readDir ./.)));
}
