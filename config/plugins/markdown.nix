{ pkgs, ... }: {
  plugins.render-markdown = {
    enable = true;
  };

  plugins.markdown-preview = {
    enable = true;
  };
}
