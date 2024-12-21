{ ... }:
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
                desc = "+Window";
            };
        }
        {
            mode = "n";
            key = "<leader>wv";
            action = ":vsplit<cr>";
            options = {
                silent = true;
                desc = "Window vsplit";
            };
        }
        {
            mode = "n";
            key = "<leader>wb";
            action = ":split<cr>";
            options = {
                silent = true;
                desc = "Window split";
            };
        }
        {
            mode = "n";
            key = "<leader>wc";
            action = ":close<cr>";
            options = {
                silent = true;
                desc = "Window close";
            };
        }
        {
            mode = "n";
            key = "<leader>wh";
            action = "<c-w>h";
            options = {
                silent = true;
                desc = "Window left";
            };
        }
        {
            mode = "n";
            key = "<leader>wj";
            action = "<c-w>j";
            options = {
                silent = true;
                desc = "Window bottom";
            };
        }
        {
            mode = "n";
            key = "<leader>wk";
            action = "<c-w>k";
            options = {
                silent = true;
                desc = "Window top";
            };
        }
        {
            mode = "n";
            key = "<leader>wl";
            action = "<c-w>l";
            options = {
                silent = true;
                desc = "Window right";
            };
        }
        {
            mode = "n";
            key = "<leader>ww";
            action = "<C-W>p";
            options = {
                silent = true;
                desc = "Other window";
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
    ];
}
