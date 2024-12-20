{ pkgs, ... }: {
  plugins.lsp = {
    enable = true;
    servers = {
      ts_ls.enable = true;
      cssls.enable = true;
      tailwindcss.enable = true;
      html.enable = true;
      astro.enable = true;
      svelte.enable = true;
      vuels.enable = true;
      pyright.enable = true;
      marksman.enable = true;
      nil_ls.enable = true;
      dockerls.enable = true;
      bashls.enable = true;
      yamlls.enable = true;
      gopls.enable = true;
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
