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
        documentation = { 
            auto_show = true, 
            auto_show_delay_ms = 500 ,
            treesitter_highlighting = true,
            window = {
                border = 'rounded',
            }
        },
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
        cmdline = function()
            local type = vim.fn.getcmdtype()
            -- Search forward and backward
            if type == '/' or type == '?' then return { 'buffer' } end
            -- Commands
            if type == ':' or type == '@' then return { 'cmdline', 'path' } end
            return {}
          end,
        min_keyword_length = 0,
    },
    signature = {
      enabled = true,
      trigger = {
        -- Show the signature help automatically
        enabled = true,
        show_on_insert = false,
      },
      window = {
        border = 'rounded',
        treesitter_highlighting = true,
        show_documentation = true,
      },
    }
}
local M = {}
M.setup = function()
    blink.setup(options)
end
return M

