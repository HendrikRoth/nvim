{ ... }:
{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        use_nvim_cmp_as_default = true;
      };

      completion = {
        documentation.auto_show = true;
        ghost_text.enabled = true;
      };

      signature.enabled = true;

      sources = {
        default = [
          "buffer"
          "calc"
          "emoji"
          "git"
          "lsp"
          "luasnip"
          "path"
          "snippets"
          "spell"
          "omni"
        ];
      };

      keymap = {
        "<C-b>" = [
          "scroll_documentation_up"
          "fallback"
        ];
        "<C-e>" = [
          "hide"
        ];
        "<C-f>" = [
          "scroll_documentation_down"
          "fallback"
        ];
        "<C-j>" = [
          "select_next"
          "fallback"
        ];
        "<C-k>" = [
          "select_prev"
          "fallback"
        ];
        "<C-space>" = [
          "show"
          "show_documentation"
          "hide_documentation"
        ];
        "<C-y>" = [
          "select_and_accept"
          "fallback"
        ];
        "<Enter>" = [
          "select_and_accept"
          "fallback"
        ];
        "<Down>" = [
          "select_next"
          "fallback"
        ];
        "<S-Tab>" = [
          "snippet_backward"
          "fallback"
        ];
        "<Tab>" = [
          "snippet_forward"
          "fallback"
        ];
        "<Up>" = [
          "select_prev"
          "fallback"
        ];
      };
    };
  };
}
