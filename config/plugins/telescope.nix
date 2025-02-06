{ ... }:
{
  plugins.project-nvim.enableTelescope = true;

  plugins.telescope = {
    enable = true;

    lazyLoad.settings.cmd = "Telescope";

    extensions = {
      fzy-native.enable = true;
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
    };
  };
}
