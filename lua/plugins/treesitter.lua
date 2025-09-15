return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "python", "java", "lua" },
                highlight = {
                    enable = true,
                },
            })
        end,
    },
}
