{ ... }:
{
  plugins.treesitter = {
    enable = true;
    settings = {
      hightlight.enable = true;
      nixGrammars.enable = true;
      indent.enable = true;
      auto_install = true;
      ensure_installed = [
        "comment"
        "css"
        "go"
        "html"
        "javascript"
        "jsonc"
        "lua"
        "markdown"
        "scss"
        "svelte"
        "toml"
        "typescript"
        "yaml"
      ];
    };
  };
}
