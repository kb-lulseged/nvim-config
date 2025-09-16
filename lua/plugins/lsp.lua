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
                ensure_installed = { "pyright", "jdtls", "lua_ls" }
            })

            -- Setup other LSP
            require("lspconfig").pyright.setup({})
            require("lspconfig").jdtls.setup({})
            require("lspconfig").lua_ls.setup({
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            globals = {'vim'},
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })
        end,
    },
}
