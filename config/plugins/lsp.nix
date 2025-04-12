{ pkgs, ... }:
{
  plugins.luasnip = {
			enable = true;
			settings = {
    			enable_autosnippets = true;
    			store_selection_keys = "<Tab>";
			};
			fromVscode = [
    			{
    				lazyLoad = true;
    				paths = "${pkgs.vimPlugins.friendly-snippets}";
    			}
			];
	};

  plugins.fastaction = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
  };

  plugins.nvim-lightbulb = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      autocmd = {
        enabled = true;
        updatetime = 200;
      };
      line = {
        enabled = true;
      };
      number = {
        enabled = true;
      };
      sign = {
        enabled = true;
        text = "󰌶";
      };
      status_text = {
        enabled = true;
        text = " 󰌶 ";
      };
    };
  };

  plugins.helm = {
    enable = true;
  };

  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      ts_ls.enable = true;
      cssls.enable = true;
      tailwindcss.enable = true;
      helm_ls.enable = true;
      html.enable = true;
      astro.enable = true;
      svelte.enable = true;
      pyright.enable = true;
      marksman.enable = true;
      nil_ls = {
        enable = true;
        settings.nix.flake.autoArchive = true;
      };
      nixd.enable = true;
      dockerls.enable = true;
      docker_compose_language_service.enable = true;
      bashls.enable = true;
      yamlls.enable = true;
      gopls.enable = true;
      sqls.enable = true;
      jsonls.enable = true;
      lua_ls = {
        enable = true;
        settings.telemetry.enable = false;
      };
      openscad_lsp.enable = true;
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
      terraformls.enable = true;
    };
  };
}
