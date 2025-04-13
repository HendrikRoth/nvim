{ ... }:
{
  plugins.blink-compat.enable = true;
  plugins.blink-cmp-git.enable = true;
  plugins.blink-emoji.enable = true;
  plugins.blink-ripgrep.enable = true;
  plugins.blink-cmp-dictionary.enable = true;

  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;

    settings = {
      appearance = {
        use_nvim_cmp_as_default = true;
      };

      completion = {
        accept.auto_brackets.enabled = true;
        documentation = {
          auto_show = true;
          window.border = "rounded";
        };
        ghost_text.enabled = true;
      };

      signature = {
        enabled = true;
        window.border = "rounded";
      };

      sources = {
        default = [
          "buffer"
          "lsp"
          "path"
          "snippets"
          "dictionary"
          "emoji"
          "git"
          "ripgrep"
        ];
        providers = {
          git = {
            name = "git";
            module = "blink-cmp-git";
          };
          ripgrep = {
            name = "Ripgrep";
            module = "blink-ripgrep";
            score_offset = 1;
          };
          dictionary = {
            name = "dict";
            module = "blink-cmp-dictionary";
            min_keyword_length = 3;
          };
          emoji = {
            name = "emoji";
            module = "blink-emoji";
            score_offset = 1;
          };
        };
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
        "<S-Enter>" = [
          "select_and_accept"
          "fallback"
        ];
        "<C-Enter>" = [
          "select_and_accept"
          "fallback"
        ];
        "<Down>" = [
          "select_next"
          "fallback"
        ];
        "<S-Tab>" = [
          "select_prev"
          "fallback"
        ];
        "<Tab>" = [
          "select_next"
          "fallback"
        ];
        "<Up>" = [
          "select_prev"
          "fallback"
        ];
      };
    };
  };

  plugins.lsp.capabilities = ''
    capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)
  '';
}
