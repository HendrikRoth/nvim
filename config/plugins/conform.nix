{ pkgs, ... }: {
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
  };
}
