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
    -- mason
    {
        "williamboman/mason.nvim",
        dependencies = {
            {
                "williamboman/mason-lspconfig.nvim",
                config = function() lowvim.load_config("mason.mason_lspconfig").setup() end,
            },
            {
                "WhoIsSethDaniel/mason-tool-installer.nvim",
                config = function() lowvim.load_config("mason.mason_tool_installer").setup() end,
            },
        },
        config = function()
            lowvim.load_config("mason").setup()
        end,
    },
    -- lsp
    {},
}