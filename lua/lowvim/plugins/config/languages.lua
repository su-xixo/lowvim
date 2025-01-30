return {
    {
        -- python
        ft = "python",
        treesitter = { 'python' },
        -- tool = { 'pylance', 'debugpy' },
        tool = {
            -- pylance is external entry need client registry to install
            linter = {},
            formatter = {},
            dap = {'debugpy'}
        },
        lsp = {},
    },
    -- c-language
    {
        treesitter = { 'c' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'clangd' },
    },
    {
        -- lua
        ft = "lua",
        treesitter = { 'lua' },
        tool = {
            linter = {},
            formatter = {"stylua"},
            dap = {},
        },
        lsp = { 'lua_ls' },
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = {
                        vim.env.VIMRUNTIME,
                    },
                },
            },
        },
    },
    {
        -- bash
        treesitter = { 'bash' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'bashls' },
    },
    {
        -- vim
        treesitter = { 'vim', 'vimdoc' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'vimls' },
    },
    {
        -- yaml
        treesitter = { 'yaml' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'yamlls' },
    },
    -- Web development
    {
        treesitter = { 'css' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'cssls' },
    },
    {
        treesitter = { 'html' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'html' },
    },
    {
        -- markdown
        treesitter = { 'markdown', 'markdown_inline' },
        tool = {
            linter = {},
            formatter = {},
            dap = {},
        },
        lsp = { 'marksman' },
    },
    -- essential
    {
        treesitter = { 'json' },
    },
    -- {
    --     treesitter = { 'xml' },
    -- },
    {
        treesitter = { 'diff', 'gitcommit' },
    },
    -- {
    --     treesitter = { 'http' },
    -- },
}