{ ... }:
{
  autoGroups = {
    highlight_yank = { };
    vim_enter = { };
    indentscope = { };
    restore_cursor = { };
  };

  autoCmd = [
    {
      desc = "Don't auto comment new line";
      event = [
        "BufEnter"
        "FileType"
      ];
      pattern = [ "*" ];
      command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o";
    }
    {
      desc = "Remove whitespaces on save";
      event = "BufWritePre";
      pattern = [ "*" ];
      command = "%s/\\s\\+$//e";
    }
    {
      group = "indentscope";
      event = [ "FileType" ];
      pattern = [
        "help"
        "Startup"
        "startup"
        "neo-tree"
        "Trouble"
        "trouble"
        "notify"
      ];
      callback = {
        __raw = ''
          function()
            vim.b.miniindentscope_disable = true
          end
        '';
      };
    }
    {
      group = "restore_cursor";
      event = [ "BufReadPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line "'\"" > 1
              and vim.fn.line "'\"" <= vim.fn.line "$"
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd "normal! g`\""
            end
          end
        '';
      };
    }
    {
      group = "highlight_yank";
      event = [ "TextYankPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    {
      event = "FileType";
      pattern = "norg";
      command = "setlocal conceallevel=1";
    }
    {
      event = "BufWritePre";
      pattern = "*.norg";
      command = "normal gg=G``zz";
    }
  ];
}