{
    globals = {
        mapleader = " ";
        maplocalleader = " ";
    };

    keymaps = [
        # Window
        {
            mode = "n";
            key = "<leader>w";
            action = "";
            options = {
                silent = true;
                desc = "Window";
            };
        }
        {
            mode = "n";
            key = "<leader>wv";
            action = ":vsplit<cr>";
            options = {
                silent = true;
                desc = "VSplit";
            };
        }
        {
            mode = "n";
            key = "<leader>wb";
            action = ":split<cr>";
            options = {
                silent = true;
                desc = "Split";
            };
        }
        {
            mode = "n";
            key = "<leader>wc";
            action = ":close<cr>";
            options = {
                silent = true;
                desc = "Close";
            };
        }
        {
            mode = "n";
            key = "<leader>wh";
            action = "<c-w>h";
            options = {
                silent = true;
                desc = "Left";
            };
        }
        {
            mode = "n";
            key = "<leader>wj";
            action = "<c-w>j";
            options = {
                silent = true;
                desc = "Bottom";
            };
        }
        {
            mode = "n";
            key = "<leader>wk";
            action = "<c-w>k";
            options = {
                silent = true;
                desc = "Top";
            };
        }
        {
            mode = "n";
            key = "<leader>wl";
            action = "<c-w>l";
            options = {
                silent = true;
                desc = "Right";
            };
        }
        {
            mode = "n";
            key = "<leader>ww";
            action = "<C-W>p";
            options = {
                silent = true;
                desc = "Other";
            };
        }

        # Git
        {
          key = "<leader>g";
          action = "<cmd>Neogit kind=split<cr>";
          options = {
            silent = true;
            desc = "Git";
          };
        }

        # Tagbar
        {
            key = "<leader>t";
            action = "<cmd>Tagbar<cr>";
            options = {
                silent = true;
                desc = "Tagbar";
            };
        }

        # Muren
        {
            key = "<leader>r";
            action = "<cmd>MurenToggle<cr>";
            options = {
                silent = true;
                desc = "Replace";
            };
        }

        # Telescope
        {
            key = "<leader>f";
            action = "";
            options = {
                silent = true;
                desc = "Find";
            };
        }
        {
            key = "<leader>ff";
            action = "<cmd>Telescope find_files<cr>";
            options = {
                silent = true;
                desc = "Files";
            };
        }
        {
          key = "<leader>fe";
          action = ''
            function()
                local buffer_name = vim.api.nvim_buf_get_name(0)
                if buffer_name == "" or string.match(buffer_name, "Starter") then
                    require('mini.files').open(vim.loop.cwd())
                else
                    require('mini.files').open(vim.api.nvim_buf_get_name(0))
                end
            end
          '';
          options = {
              silent = true;
              desc = "Manually";
          };
        }
        {
            key = "<leader>fg";
            action = "<cmd>Telescope live_grep<cr>";
            options = {
                silent = true;
                desc = "Grep";
            };
        }
        {
            key = "<leader>fx";
            action = "<cmd>Telescope git_files<cr>";
            options = {
                silent = true;
                desc = "Git files";
            };
        }
        {
            key = "<leader>fp";
            action = "<cmd>Telescope projects<cr>";
            options = {
                silent = true;
                desc = "Projects";
            };
        }
        {
            key = "<leader><space>";
            action = "<cmd>Telescope buffers<cr>";
            options = {
                silent = true;
                desc = "Buffers";
            };
        }
        {
            key = "<leader>fd";
            action = "<cmd>Telescope lsp_document_symbols<cr>";
            options = {
                silent = true;
                desc = "Document symbols";
            };
        }
        {
            key = "<leader>fh";
            action = "<cmd>Telescope help_tags<cr>";
            options = {
                silent = true;
                desc = "Help";
            };
        }
        {
            key = "<leader>fr";
            action = "<cmd>Telescope lsp_references<cr>";
            options = {
                silent = true;
                desc = "References";
            };
        }
        {
            key = "<leader>fq";
            action = "<cmd>Telescope quickfix<cr>";
            options = {
                silent = true;
                desc = "Quickfix";
            };
        }
        {
            key = "<leader>f?";
            action = "<cmd>Telescope builtin<cr>";
            options = {
                silent = true;
                desc = "Other";
            };
        }

        # Neogen
        {
          mode = "n";
          key = "<leader>g";
          action = "";
          options = {
            silent = true;
            desc = "Generate";
          };
        }
        {
          mode = [
            "n"
            "x"
          ];
          key = "<leader>gg";
          action.__raw = "function() require('neogen').generate() end";
          options = {
            silent = true;
            noremap = true;
            desc = "Generate";
          };
        }
        {
          mode = [
            "n"
            "x"
          ];
          key = "<leader>gf";
          action = ":Neogen func<cr>";
          options = {
            silent = true;
            noremap = true;
            desc = "Function";
          };
        }
        {
          mode = [
            "n"
            "x"
          ];
          key = "<leader>gc";
          action = ":Neogen class<cr>";
          options = {
            silent = true;
            noremap = true;
            desc = "Class";
          };
        }
        {
          mode = [
            "n"
            "x"
          ];
          key = "<leader>gt";
          action = ":Neogen type<cr>";
          options = {
            silent = true;
            noremap = true;
            desc = "Type";
          };
        }
        {
          mode = [
            "n"
            "x"
          ];
          key = "<leader>gm";
          action = ":Neogen module<cr>";
          options = {
            silent = true;
            noremap = true;
            desc = "Module";
          };
        }
    ];
}
