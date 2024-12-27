{ ... }:
{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      accept.auto_brackets.enabled = true;
      window.documentation.auto_show = true;
      highlight.use_nvim_cmp_as_default = true;
      trigger.signature_help.enabled = true;
      ghost_text.enabled = true;
      signature.enabled = true;
      lsp.capabilities = ''
        capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)
      '';
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
        ];
        "<C-Enter>" = [
          "select_and_accept"
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
