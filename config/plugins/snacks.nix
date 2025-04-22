{ ... }:
{
  plugins.snacks = {
    enable = true;

    settings = {
      dashboard = {
        enabled = false;
      };
      bigfile = {
        enabled = true;
      };
      notifier = {
        enabled = true;
        timeout = 3000;
        style = "compact";
      };
      quickfile = {
        enabled = false;
      };
      explorer = {
        replace_netrw = true;
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
      picker = {
        enabled = true;
      };
      image = {
        enabled = true;
      };
      input = {
        enabled = true;
      };
    };
  };
}
