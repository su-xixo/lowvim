return {
    -- {
    --     -- javascript and typescript
    --     treesitter = { 'javascript', 'typescript' },
    --     mason = { 'vtsls', 'js-debug-adapter' },
    --     lsp = { 'vtsls' },
    --     settings = {
    --         -- See: https://github.com/typescript-language-server/typescript-language-server/blob/master/docs/configuration.md
    --         -- See: https://github.com/yioneko/vtsls/blob/main/packages/service/conjfiguration.schema.json
    --         ['js/ts'] = {
    --             implicitProjectConfig = {
    --                 checkJs = true,
    --                 target = 'ES2022',
    --             },
    --         },
    --         javascript = {
    --             inlayHints = {
    --                 parameterNames = { enabled = 'literals' },
    --                 parameterTypes = { enabled = true },
    --                 variableTypes = { enabled = true },
    --                 propertyDeclarationTypes = { enabled = true },
    --                 functionLikeReturnTypes = { enabled = true },
    --                 enumMemberValues = { enabled = true },
    --             },
    --         },
    --         typescript = {
    --             inlayHints = {
    --                 parameterNames = { enabled = 'literals' },
    --                 parameterTypes = { enabled = true },
    --                 variableTypes = { enabled = true },
    --                 propertyDeclarationTypes = { enabled = true },
    --                 functionLikeReturnTypes = { enabled = true },
    --                 enumMemberValues = { enabled = true },
    --             },
    --         },
    --     },
    -- },
    {
        -- python
        treesitter = { 'python' },
        mason = { 'pylance', 'debugpy' },
        lsp = { 'pylance' },
        settings = {
            -- See: https://github.com/microsoft/pyright/blob/main/docs/settings.md
            -- See: https://code.visualstudio.com/docs/python/settings-reference
            python = {
                pythonPath = vim.fn.exepath('python'),
                analysis = {
                    inlayHints = {
                        variableTypes = true,
                        functionReturnTypes = true,
                        callArgumentNames = true,
                        pytestParameters = true,
                    },
                    typeCheckingMode = 'basic',
                    diagnosticMode = 'openFilesOnly',
                    autoImportCompletions = true,
                    diagnosticSeverityOverrides = {
                        reportOptionalSubscript = 'none',
                        reportOptionalMemberAccess = 'none',
                        reportOptionalCall = 'none',
                        reportOptionalIterable = 'none',
                        reportOptionalContextManager = 'none',
                        reportOptionalOperand = 'none',
                    },
                },
            },
        },
    },
    -- {
    --     -- java
    --     treesitter = { 'java' },
    --     mason = { 'jdtls', 'java-debug-adapter', 'java-test' },
    --     settings = {
    --         -- See: https://github.com/eclipse-jdtls/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    --         -- Also see: https://github.com/redhat-developer/vscode-java/blob/d3bcbaa3f5a3097dc21b5d94132d6858a0452a7c/package.json#L273
    --         java = {
    --             configuration = {
    --                 updateBuildConfiguration = 'automatic',
    --             },
    --             eclipse = {
    --                 downloadSources = true,
    --             },
    --             maven = {
    --                 downloadSources = true,
    --             },
    --             format = {
    --                 enabled = true,
    --             },
    --             signatureHelp = {
    --                 enabled = true,
    --             },
    --             contentProvider = {
    --                 preferred = 'fernflower',
    --             },
    --             sources = {
    --                 organizeImports = {
    --                     starThreshold = 9999,
    --                     staticStarThreshold = 9999,
    --                 },
    --             },
    --             codeGeneration = {
    --                 useBlocks = true,
    --             },
    --         },
    --     },
    -- },
    -- -- c-language
    -- {
    --     treesitter = { 'c_sharp' },
    --     mason = { 'csharp-language-server', 'netcoredbg' },
    --     lsp = { 'csharp_ls' },
    -- },
    -- {
    --     treesitter = { 'c' },
    --     mason = { 'clangd' },
    --     lsp = { 'clangd' },
    -- },
    -- {
    --     treesitter = { 'nim' },
    --     -- needs manual install, choosenim-bin, nimlangserver-git
    --     -- mason = { 'nimlangserver' },
    --     lsp = { 'nim_langserver' },
    -- },
    {
        -- lua
        treesitter = { 'lua' },
        mason = { 'lua-language-server' },
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
        mason = { 'bash-language-server' },
        lsp = { 'bashls' },
    },
    {
        -- vim
        treesitter = { 'vim', 'vimdoc' },
        mason = { 'vim-language-server' },
        lsp = { 'vimls' },
    },
    {
        -- yaml
        treesitter = { 'yaml' },
        mason = { 'yaml-language-server' },
        lsp = { 'yamlls' },
    },
    -- -- Web development
    -- {
    --     treesitter = { 'css' },
    --     mason = { 'css-lsp' },
    --     lsp = { 'cssls' },
    -- },
    -- {
    --     treesitter = { 'html' },
    --     mason = { 'html-lsp' },
    --     lsp = { 'html' },
    -- },
    -- {
    --     -- markdown
    --     treesitter = { 'markdown', 'markdown_inline' },
    --     mason = { 'marksman' },
    --     lsp = { 'marksman' },
    -- },
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