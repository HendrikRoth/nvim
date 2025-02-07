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
      # indentscope = {
      #   draw = {
      #     delay = 0;
      #   };
      # };
      jump2d = { };
      move = {
        mappings = {
          # Normal mode
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
      notify = { };
      pairs = { };
      statusline = {
        set_vim_settings = false;
      };
      surround = {
        n_lines = 48;
        highlight_duration = 2000;
        search_method = "cover_or_next";
        mappings = {
          add = "gsa";
          delete = "gsd";
          find = "gsf";
          find_left = "gsF";
          highlight = "gsh";
          replace = "gsr";
          update_n_lines = "gsn";
        };
      };
      icons = { };
    };
  };
}
