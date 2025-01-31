local blink = require('blink.cmp')
local options = {
    keymap = {
        preset = 'super-tab',
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<C-y>'] = { 'select_and_accept' },
        ['<CR>'] = { 'accept', 'fallback' },

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
            -- 'fallback',
        },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },

        ['<C-k>'] = { 'show_signature', 'hide_signature' },
    },
    completion = {
        trigger = {
            show_on_trigger_character = true,
            show_on_insert_on_trigger_character = true,
        },
        list = {
            selection = { preselect = true, auto_insert = false }
        },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
}
local M = {}
M.setup = function()
    blink.setup(options)
end
return M

