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

    -- formatting
    {
        'stevearc/conform.nvim',
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            lowvim.load_config("base.formatting").setup()
        end,
    },
    -- linting
    {},
    -- auto completion
    {
        "saghen/blink.cmp",
        version = '*',
        -- build = "cargo build --release",
        -- dependencies = {
        --     "rafamadriz/friendly-snippets",
        --     -- add blink.compat to dependencies
        --     {
        --       "saghen/blink.compat",
        --       optional = true, -- make optional so it's only enabled if any extras need it
        --       opts = {},
        --       version = not vim.g.lazyvim_blink_main and "*",
        --     },
        --   },
       event = "InsertEnter",
      config = function()
        lowvim.load_config("base.blink").setup()
      end

    },
}