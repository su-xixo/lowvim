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
            lowvim.load_config("base.treesitter").setup()
        end,
    },
    -- mason
    {
        "williamboman/mason.nvim",
        config = function()
            lowvim.load_config("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function() lowvim.load_config("mason.mason_lspconfig").setup() end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function() lowvim.load_config("mason.mason_tool_installer").setup() end,
    },
    -- lsp
    {
        "neovim/nvim-lspconfig",
        name = "lspconfig",
        cmd = { "LspInfo", "LspInstall", "LspUninstall" },
        event = { "BufReadPost", "BufNewFile" },
        config = function()
          lowvim.load_config("base.lsp").setup()
        end,
    },
}