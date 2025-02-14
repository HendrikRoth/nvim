{ ... }: {
  plugins.navic = {
    enable = true;

    settings = {
      lsp = {
        auto_attach = true;
        preference = [
          "biome"
          "tsserver"
          "nixd"
          "nix_ls"
        ];
      };
    };
  };
}
