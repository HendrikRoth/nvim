{ ... }:
{
  plugins.gitsigns = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      current_line_blame = false;
    };
  };
}
