-- Essential options for coding
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false  -- Don't keep highlights after search
vim.opt.incsearch = true

-- Performance for SSH
vim.opt.updatetime = 250  -- Faster completion
vim.opt.timeoutlen = 300  -- Faster key sequence timeout

-- Visual improvements
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"  -- Prevent text shifting with diagnostics
vim.opt.wrap = false
vim.opt.scrolloff = 8  -- Keep 8 lines visible when scrolling

-- Essential for coding
vim.opt.undofile = true  -- Persistent undo
vim.opt.swapfile = false  -- Less clutter over SSH

-- LSP diagnostic keybindings
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
