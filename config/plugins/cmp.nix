{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.blink-compat ];

  plugins.blink-compat.enable = true;

  plugins.blink-cmp = {
    enable = true;

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
          "lsp"
          "path"
          "snippets"
          "buffer"
          "git"
          "calc"
          "omni"
        ];
        providers = {
          git = {
            name = "git";
            module = "blink.compat.source";
          };
          calc = {
            name = "calc";
            module = "blink.compat.source";
          };
          omni = {
            name = "omni";
            module = "blink.compat.source";
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

  plugins.cmp-omni.enable = true;
  plugins.cmp-git.enable = true;
  plugins.cmp-calc.enable = true;
}
