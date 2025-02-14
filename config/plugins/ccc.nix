{ ... }:
{
  plugins.ccc = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      highlighter.auto_enable = true;
    };
  };
}
