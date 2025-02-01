local treesitter_context = require('treesitter-context')
local treesitter = require('nvim-treesitter.configs')
local context_option = {
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    multiwindow = false, -- Enable multiwindow support.
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    line_numbers = true,
    multiline_threshold = 20, -- Maximum number of lines to show for a single context
    trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
    -- Separator between context and content. Should be a single character string, like '-'.
    -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
    separator = nil,
    zindex = 20, -- The Z-index of the context window
    on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
local options = {
    ensure_installed = lowvim.extract('treesitter', languages),
    sync_install = false,
    auto_install = false,
    ignore_install = {},
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn', -- set to `false` to disable one of the mappings
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
        },
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            include_surrounding_whitespace = true,
            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['ab'] = '@block.outer',
                ['ib'] = '@block.inner',
                ['as'] = '@statement.outer',
                ['is'] = '@statement.inner',
                ['ax'] = '@attribute.outer',
                ['ix'] = '@attribute.inner',
                ['i/'] = '@comment.inner',
                ['a/'] = '@comment.outer',
                ['i#'] = '@comment.inner',
                ['a#'] = '@comment.outer',
                ['i*'] = '@comment.inner',
                ['a*'] = '@comment.outer',
            },
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                [']f'] = '@function.outer',
                [']c'] = '@class.outer',
                [']a'] = '@parameter.outer',
                [']b'] = '@block.outer',
                [']s'] = '@statement.outer',
                [']x'] = '@attribute.outer',
                [']*'] = '@comment.outer',
            },
            goto_next_end = {
                [']F'] = '@function.outer',
                [']C'] = '@class.outer',
                [']A'] = '@parameter.outer',
                [']B'] = '@block.outer',
                [']S'] = '@statement.outer',
                [']X'] = '@attribute.outer',
                [']?'] = '@comment.outer',
            },
            goto_previous_start = {
                ['[f'] = '@function.outer',
                ['[c'] = '@class.outer',
                ['[a'] = '@parameter.outer',
                ['[b'] = '@block.outer',
                ['[s'] = '@statement.outer',
                ['[x'] = '@attribute.outer',
                ['[*'] = '@comment.outer',
            },
            goto_previous_end = {
                ['[F'] = '@function.outer',
                ['[C'] = '@class.outer',
                ['[A'] = '@parameter.outer',
                ['[B'] = '@block.outer',
                ['[S'] = '@statement.outer',
                ['[X'] = '@attribute.outer',
                ['[?'] = '@comment.outer',
            },
        },
    },
}
local keymaps = function() end

local M = {}
M.setup = function()
    -- registering same bash treesitter parser for zsh as well
    vim.treesitter.language.register('bash', 'zsh')

    -- defining code folding scope set by treesitter
    -- vim.cmd([[
    --   set foldmethod=expr
    --   set foldexpr=nvim_treesitter#foldexpr()
    -- ]])
    -- vim.wo.foldmethod = 'expr'
    -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

    treesitter.setup(options)
    treesitter_context.setup(context_option)
    keymaps()
end
return M
