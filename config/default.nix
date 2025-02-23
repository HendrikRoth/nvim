{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    chafa
    imagemagick
    nix
    nixd
    ripgrep
    vale
    yamllint
  ];

  imports =
    with builtins;
    map (fn: ./${fn}) (filter (fn: fn != "default.nix") (attrNames (readDir ./.)));
}
