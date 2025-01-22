{ ... }:
{
  plugins.diagram-nvim = {
    enable = true;

    settings = {
      renderer_options = {
        mermaid = {
          background = "transparent";
          theme = "dark";
        };
      };
    };
  };
}
