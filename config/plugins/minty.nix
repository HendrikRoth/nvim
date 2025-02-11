{ pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.windows-nvim
    pkgs.vimPlugins.nvzone-minty
  ];
  extraConfigLua =
    ''
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require('windows').setup()

    require('minty').setup({
      huefy = {
        border = true,
        mappings = function(buf)
          local api = require("minty.shades.api")
          vim.keymap.set("n", "s", api.save_color, { buffer = buf })
        end
      }
    })
  '';
}
