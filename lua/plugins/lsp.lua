return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            -- Setup Mason
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright" }
            })

            -- Setup other LSP
            require("lspconfig").pyright.setup({})
        end,
    },
}
