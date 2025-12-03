return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<leader>t]],
            direction = "horizontal",
        },
        config = function(_, opts)
            require("toggleterm").setup(opts)
        end,
    },
}
