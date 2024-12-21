{ pkgs, ... }: {
  plugins.telescope = {
    enable = true;

    keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>pg" = "git_files";
        "<C-p>" = "git_files";
        "<leader><space>" = "buffers";
        "<leader>ds" = "lsp_document_symbols";
        "<leader>rr" = "lsp_references";
    };

    lazyLoad.settings.cmd = "Telescope";

    extensions = {
      fzy-native.enable = true;
      ui-select.enable = true;

      frecency = {
        enable = true;

        settings = { db_safe_mode = false; };
      };
    };
  };
}
