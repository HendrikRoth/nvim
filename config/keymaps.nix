{
    globals = {
        mapleader = " ";
        maplocalleader = " ";
    };

    keymaps = [
        # AI
        {
            mode = "n";
            key = "<leader>a";
            action = "";
            options = {
                silent = true;
                desc = "AI";
            };
        }

        # Colorpicker
        {
            mode = "n";
            key = "<leader>c";
            action = ":CccPick<cr>";
            options = {
                silent = true;
                desc = "Colorpicker";
            };
        }

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
            key = "<leader>fu";
            action = "<cmd>Telescope undo<cr>";
            options = {
                silent = true;
                desc = "Undo";
            };
        }
        {
            key = "<leader>fo";
            action = "<cmd>Telescope oldfiles<cr>";
            options = {
                silent = true;
                desc = "Old files";
            };
        }
        {
            key = "<leader>ft";
            action = "<cmd>Telescope todo-comments<cr>";
            options = {
                silent = true;
                desc = "Todos";
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
          key = "<leader>.";
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
          key = "<leader>.g";
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
          key = "<leader>.f";
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
          key = "<leader>.c";
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
          key = "<leader>.t";
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
          key = "<leader>.m";
          action = ":Neogen module<cr>";
          options = {
            silent = true;
            noremap = true;
            desc = "Module";
          };
        }

        # Obsidian
        {
          mode = "n";
          key = "<leader>o";
          action = "";
          options = {
            silent = true;
            desc = "Obsidian";
          };
        }
        {
          mode = "n";
          key = "<leader>oo";
          action = ":ObsidianOpen<cr>";
          options = {
            silent = true;
            desc = "Open";
          };
        }
        {
          mode = "n";
          key = "<leader>on";
          action = ":ObsidianNew<cr>";
          options = {
            silent = true;
            desc = "New";
          };
        }
        {
          mode = "n";
          key = "<leader>os";
          action = ":ObsidianSearch<cr>";
          options = {
            silent = true;
            desc = "Search";
          };
        }
        {
          mode = "n";
          key = "<leader>of";
          action = ":ObsidianfollowLink vsplit<cr>";
          options = {
            silent = true;
            desc = "Follow link";
          };
        }
        {
          mode = "n";
          key = "<leader>ob";
          action = ":ObsidianBacklinks<cr>";
          options = {
            silent = true;
            desc = "Backlinks";
          };
        }
        {
          mode = "n";
          key = "<leader>ot";
          action = ":ObsidianTags<cr>";
          options = {
            silent = true;
            desc = "Tags";
          };
        }
        {
          mode = "n";
          key = "<leader>oT";
          action = ":ObsidianToday<cr>";
          options = {
            silent = true;
            desc = "Today";
          };
        }
        {
          mode = "n";
          key = "<leader>oY";
          action = ":ObsidianYesteraday<cr>";
          options = {
            silent = true;
            desc = "Yesterday";
          };
        }
        {
          mode = "n";
          key = "<leader>od";
          action = ":ObsidianDailies -10 1<cr>";
          options = {
            silent = true;
            desc = "Dailies";
          };
        }
        {
          mode = "n";
          key = "<leader>ol";
          action = ":ObsidianLinks<cr>";
          options = {
            silent = true;
            desc = "Links";
          };
        }
        {
          mode = "n";
          key = "<leader>oL";
          action = ":ObsidianLinkNew<cr>";
          options = {
            silent = true;
            desc = "New link";
          };
        }
        {
          mode = "n";
          key = "<leader>oL";
          action = ":ObsidianLinkNew<cr>";
          options = {
            silent = true;
            desc = "New link";
          };
        }
        {
          mode = "n";
          key = "<leader>oi";
          action = ":ObsidianPasteImg<cr>";
          options = {
            silent = true;
            desc = "Paste image";
          };
        }
        {
          mode = "n";
          key = "<leader>or";
          action = ":ObsidianRename<cr>";
          options = {
            silent = true;
            desc = "Rename";
          };
        }
        {
          mode = "n";
          key = "<leader>or";
          action = ":ObsidianToggleCheckbox<cr>";
          options = {
            silent = true;
            desc = "Toggle checkbox";
          };
        }
        {
          mode = "n";
          key = "<leader>oT";
          action = ":ObsidianTOC<cr>";
          options = {
            silent = true;
            desc = "Toc";
          };
        }

        # File Browser
        {
          mode = "n";
          key = "-";
          # action = ":lua MiniFiles.open()<cr>";
          action.__raw = ''
            function()
              require('mini.files').open(vim.api.nvim_buf_get_name(0), false)
              require('mini.files').reveal_cwd()
            end
          '';
          options = {
            silent = true;
            desc = "File Browser";
          };
        }

        # Aerial (Tags)
        {
          mode = "n";
          key = "<leader>t";
          action = ":AerialToggle<cr>";
          options = {
            silent = true;
            desc = "Tags";
          };
        }

        # Testing
        {
          mode = "n";
          key = "<leader>v";
          action = "";
          options = {
            silent = true;
            desc = "Testing";
          };
        }
        {
          mode = "n";
          key = "<leader>va";
          action = ":Neotest attach<cr>";
          options = {
            silent = true;
            desc = "Attach";
          };
        }
        {
          mode = "n";
          key = "<leader>vd";
          action.__raw = "function() require('neotest').run.run({strategy = 'dap'}) end";
          options = {
            silent = true;
            desc = "Debug";
          };
        }
        {
          mode = "n";
          key = "<leader>vo";
          action = ":Neotest output<cr>";
          options = {
            silent = true;
            desc = "Output";
          };
        }
        {
          mode = "n";
          key = "<leader>vp";
          action = ":Neotest output-panel<cr>";
          options = {
            silent = true;
            desc = "Toggle panel";
          };
        }
        {
          mode = "n";
          key = "<leader>vr";
          action = ":Neotest run<cr>";
          options = {
            silent = true;
            desc = "Run";
          };
        }
        {
          mode = "n";
          key = "<leader>vs";
          action = ":Neotest stop<cr>";
          options = {
            silent = true;
            desc = "Stop";
          };
        }
        {
          mode = "n";
          key = "<leader>vt";
          action = ":Neotest summary<cr>";
          options = {
            silent = true;
            desc = "Toggle summary";
          };
        }

        # Code action
        {
          mode = "n";
          key = "<leader>x";
          action.__raw = "function() require('fastaction').code_action() end";
          options = {
            silent = true;
            desc = "Code action";
          };
        }

        # Move lines
        {
          mode = "n";
          key = "<S-j>";
          action = ":m+1<cr>";
          options = {
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<S-k>";
          action = ":m-2<cr>";
          options = {
            silent = true;
          };
        }
    ];
}
