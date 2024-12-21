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
      indentscope = {
        draw = {
          delay = 0;
        };
      };
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
      starter = {
        content_hooks = {
            "__unkeyed-1.adding_bullet" = {
            __raw = "require('mini.starter').gen_hook.adding_bullet()";
            };
            "__unkeyed-2.indexing" = {
            __raw = "require('mini.starter').gen_hook.indexing('all', { 'Builtin actions' })";
            };
            "__unkeyed-3.padding" = {
            __raw = "require('mini.starter').gen_hook.aligning('center', 'center')";
            };
        };
        evaluate_single = true;
        header = "";
        items = {
            "__unkeyed-1.buildtin_actions" = {
            __raw = "require('mini.starter').sections.builtin_actions()";
            };
            "__unkeyed-2.recent_files_current_directory" = {
            __raw = "require('mini.starter').sections.recent_files(10, false)";
            };
            "__unkeyed-3.recent_files" = {
            __raw = "require('mini.starter').sections.recent_files(10, true)";
            };
            "__unkeyed-4.sessions" = {
            __raw = "require('mini.starter').sections.sessions(5, true)";
            };
        };
        footer = "";
      };
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
