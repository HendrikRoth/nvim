{ ... }:
{
  plugins.project-nvim.enableTelescope = true;

  plugins.telescope = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        selection_caret = "";
        entry_prefix = "";
        mappings = {
          i = {
            "<C-j>" = {
              __raw = ''require('telescope.actions').move_selection_next'';
            };
            "<C-k>" = {
              __raw = ''require('telescope.actions').move_selection_previous'';
            };
          };
        };
      };
      pickers = {
        colorscheme = {
          enable_preview = true;
        };
      };
    };

    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
      file-browser.enable = true;
      project.enable = true;
      undo.enable = true;
      frecency = {
        enable = true;

        settings = {
          db_safe_mode = false;
        };
      };
      media-files = {
        enable = true;
        dependencies = {
          chafa.enable = true;
          imageMagick.enable = true;
        };
        settings = {
          filetypes = [
            "png"
            "jpg"
            "jpeg"
            "webp"
            "gif"
          ];
          find_cmd = "rg";
        };
      };
    };
  };
}
