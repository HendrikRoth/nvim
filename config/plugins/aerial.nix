{ ... }:
{
  plugins.aerial = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      attach_mode = "global";
      backends = [
        "treesitter"
        "lsp"
        "markdown"
        "man"
      ];
      disable_max_lines = 5000;
      highlight_on_hover = true;
      ignore = {
        filetypes = [
          "gomod"
        ];
      };
    };
  };
}
