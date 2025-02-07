{ pkgs, ... }:
{
  plugins.tagbar = {
    enable = true;
    settings.width = 50;
    tagsPackage = pkgs.universal-ctags;
  };
}
