-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto Save
vim.api.nvim_create_autocmd({ "InsertLeave", "BufLeave", "FocusLost" }, {
    callback = function()
        if vim.bo.modifiable and vim.bo.filetype ~= "" then
            vim.cmd("silent! write")
        end
    end,
})

-- Trigger auto format on Ctrl S (save)
-- Currently does not work with auto save , no idea.
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.rs,*.py,*.c,*.h,*.cpp,*.hpp",
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})
