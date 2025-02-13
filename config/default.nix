{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    nix
    ripgrep
    vale
  ];

  imports =
    with builtins;
    map (fn: ./${fn}) (filter (fn: fn != "default.nix") (attrNames (readDir ./.)));
}
