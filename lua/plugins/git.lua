return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                },
            })

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
            vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle  blame" })
        end,
    },

    -- Git commands
    {
        "tpope/vim-fugitive", 
        config = function()
            vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Git Status" })
            vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
            vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
        end,
    },
}


