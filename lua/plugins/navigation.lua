return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", ".git/", "target/", "build/" },
                    layout_config = {
                        horizontal = { width = 0.9, height = 0.9 },
                    },
                },
            })

            -- Key mappings
            vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find Files" })
            vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find buffers" })
            vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Help tags" })
        end,
    },

    -- File tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                filesystem = {
                    follow_current_file = { enabled = true },
                    hijack_netrw_behavior = "open_current", 
                },
            })

            vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle File Tree" })
        end,
    },
}

