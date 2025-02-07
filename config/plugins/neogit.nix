{ pkgs, ... }:
{
  plugins.neogit = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
  };
}
