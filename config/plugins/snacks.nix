{ ... }:
{
  plugins.snacks = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      bigfile = {
        enabled = true;
      };
      notifier = {
        enabled = true;
        timeout = 3000;
      };
      quickfile = {
        enabled = false;
      };
      statuscolumn = {
        enabled = false;
      };
      words = {
        debounce = 0;
        enabled = true;
      };
      scroll = {
        enabled = true;
      };
      indent = {
        enabled = true;
        only_scope = true;
        only_current = true;
      };
      image = {
        enabled = true;
      };
    };
  };
}
