return {
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            -- "windwp/nvim-ts-autotag",
            "nvim-treesitter/nvim-treesitter-textobjects",
            "nvim-treesitter/nvim-treesitter-context",
        },
        config = function()
            lowvim.load_config("treesitter").setup()
        end,
    },
    -- lsp
    {},

    -- mason
    {},
    -- mason tool installer
    {},
}