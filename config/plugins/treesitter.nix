{ ... }:
{
  plugins.treesitter = {
    enable = true;
    settings = {
      hightlight.enable = true;
      nixGrammars.enable = true;
      indent.enable = true;
    };
  };
}
