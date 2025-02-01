local blink = require('blink.cmp')
local options = {
    keymap = {
        preset = 'none',
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<C-y>'] = { 'select_and_accept' },
        ['<CR>'] = { 
            -- function()
            --     if b
            -- end,

        'accept', 'fallback' },

        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-n>'] = { 'select_next', 'fallback' },

        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },

        ['<Tab>'] = {
            -- function(cmp)
            --     if cmp.snippet_active() then
            --         return cmp.accept()
            --     else
            --         return cmp.select_and_accept()
            --     end
            -- end,
            'select_next',
            'snippet_forward',
            'fallback',
        },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },

        ['<C-k>'] = { 'show_signature', 'hide_signature' },

        -- cmdline = {
        --     -- preset = 'enter',
        --     ['<CR>'] = { 'select_and_accept', 'fallback' },
        -- }
    },
    completion = {
        keyword = { range = 'full' }, -- Default 'prefix'
        trigger = {
            show_on_trigger_character = true,
            show_on_insert_on_trigger_character = true,
        },
        list = {
            cycle = { from_bottom = true, },
            -- selection = { preselect = function(ctx) return ctx.mode ~= 'cmdline' end, auto_insert = false }
            selection = { preselect = function() return vim.fn.mode() ~= 'c' end, auto_insert = false }
        },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        menu = {
            border = 'rounded',
            winblend = 0,
        },
        ghost_text = { enabled = false },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    signature = { enabled = true }
}
local M = {}
M.setup = function()
    blink.setup(options)
end
return M

