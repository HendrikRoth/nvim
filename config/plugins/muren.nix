{ ... }:
{
  plugins.muren = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      cwd = true;
      keys = {
        close = "q";
        do_redo = "<localleader>r";
        do_replace = "<CR>";
        do_undo = "<localleader>u";
        scroll_preview_down = "<C-j>";
        scroll_preview_up = "<C-k>";
        toggle_option_under_cursor = "<CR>";
        toggle_options_focus = "<C-s>";
        toggle_side = "<Tab>";
      };
    };
  };
}
