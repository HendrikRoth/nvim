{ ... }:
{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      exclude = {
        buftypes = [
          "terminal"
          "nofile"
          "quickfix"
          "prompt"
        ];
        filetypes = [
          "lspinfo"
          "packer"
          "checkhealth"
          "help"
          "man"
          "gitcommit"
          "TelescopePrompt"
          "TelescopeResults"
          "''"
        ];
      };
      indent = {
        char = "│";
      };
      scope = {
        show_end = false;
        show_exact_scope = true;
        show_start = false;
      };
    };
  };
}
