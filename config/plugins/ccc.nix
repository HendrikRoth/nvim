{ ... }:
{
  plugins.ccc = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      highlighter = {
        lsp = false;
        auto_enable = true;
        excludes = [ "markdown" ];
        highlight_mode = "virtual";
      };
      lsp = false;
    };
  };
}
