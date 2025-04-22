{ pkgs, ... }:
{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      basics = { };
      bracketed = { };
      clue = {
        triggers = [
          # leader
          {
            mode = "n";
            keys = "<leader>";
          }
          {
            mode = "x";
            keys = "<leader>";
          }

          # builtin completion
          {
            mode = "i";
            keys = "<c-x>";
          }
        ];
        window = {
          config = { };
          delay = 0;
          scroll_down = "<c-d>";
          scroll_up = "<c-u>";
        };
      };
      comment = { };
      cursorword = {
        delay = 50;
      };
      extra = { };
      files = {
        content = {
          filter.__raw = ''
            function(entry)
              return entry.name ~= '.git' and entry.name ~= '.direnv' and entry.name ~= '.envrc' and entry.name ~= '.gitlab' and entry.name ~= '.github'
            end'';
        };
        options = {
          permanent_delete = false;
          use_as_default_explorer = true;
        };
        windows = {
          preview = true;
          width_focus = 50;
          width_nofocus = 10;
          width_preview = 40;
        };
      };
      hipatterns = { };
      jump2d = { };
      move = {
        mappings = {
          # Normalmode
          down = "<c-j>";
          up = "<c-k>";
          left = "<c-h>";
          right = "<c-l>";

          # Visual node
          line_down = "<c-j>";
          line_up = "<c-k>";
          line_left = "<c-h>";
          line_right = "<c-l>";
        };
      };
      pairs = { };
      statusline = {
        set_vim_settings = false;
      };
      splitjoin = {
        mappings = {
          toggle = "gs";
          split = "";
          join = "";
        };
      };
      surround = {
        n_lines = 48;
        highlight_duration = 2000;
        search_method = "cover_or_next";
        mappings = {
          add = "sa";
          delete = "sd";
          find = "sf";
          find_left = "sF";
          highlight = "sh";
          replace = "sr";
          update_n_lines = "sn";
          suffix_last = "l";
          suffix_next = "n";
        };
      };
      trailspace = { };
      icons = { };
    };
  };
}
