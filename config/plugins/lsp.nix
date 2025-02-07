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

  plugins.lsp = {
    enable = true;
    servers = {
      ts_ls.enable = true;
      cssls.enable = true;
      tailwindcss.enable = true;
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
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
    };
  };
}
