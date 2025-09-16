return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = false, 
                undercurl = true,
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,
                dimInactive = false,
                terminalColors = true,
                colors = {
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} }
                },
                theme = "dragon", -- dragon, wave, or lotus 
            })

            vim.cmd([[colorscheme kanagawa-dragon]])
        end,
    },
}

