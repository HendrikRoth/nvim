{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      transparent_background = true;
      integrations = {
        treesitter = true;
        indent_blankline.enabled = true;
        mini.enabled = true;
      };
    };
  };

  performance = {
    byteCompileLua = {
      enable = true;
      configs = true;
      initLua = true;
      nvimRuntime = true;
      plugins = true;
    };
  };

  diagnostics.virtual_lines.only_current_line = true;

  opts = {
    # highlight on search
    hlsearch = true;
    incsearch = true;

    # case insensitive searching
    ignorecase = true;
    smartcase = true;

    # line numbers
    number = true;
    relativenumber = true;

    # tabs
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;

    # enable mouse
    mouse = "a";

    # Enable auto indenting and set it to spaces
    smartindent = true;
    shiftwidth = 2;

    # break indent
    breakindent = true;

    # save undo history
    swapfile = false;
    backup = false;
    undofile = true;

    # signcolumn
    signcolumn = "yes";

    # text width
    colorcolumn = "80";
    textwidth = 80;

    # decrease update time
    updatetime = 100;
    timeout = true;
    timeoutlen = 500;

    # completion
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ];

    # terminal colors
    termguicolors = true;

    # gui font
    guifont = "FiraCode Nerd Font";

    # minimum shown lines under cursor;
    scrolloff = 8;

    # cmdline height
    cmdheight = 0;

    # always use unix fileformat
    fileformat = "unix";
    fileformats = "unix,dos";

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";

    # Fallback to lsp if no formatters are available
    formatexpr = "v:lua.require'conform'.formatexpr()";
  };
}
