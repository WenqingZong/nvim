-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- [[Context]]
opt.colorcolumn = "120"

-- Startup Directory
local default_path = vim.fn.expand("~/Projects/")
vim.api.nvim_set_current_dir(default_path)

-- Inline Diagnostic
vim.diagnostic.config({ virtual_lines = true })
vim.diagnostic.config({ virtual_text = true })

-- Show all whitespaces
vim.o.list = true
vim.o.listchars = "tab:» ,lead:•,trail:•"

-- Highlight trailing whitespaces
vim.api.nvim_set_hl(0, "TrailingWhitespace", { bg = "LightRed" })
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    command = [[
        syntax clear TrailingWhitespace |
        syntax match TrailingWhitespace "\_s\+$"
    ]],
})

-- Set default identation to 4 spaces.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
