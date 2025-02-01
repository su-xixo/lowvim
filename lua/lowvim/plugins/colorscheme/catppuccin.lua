return {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            compile_path = vim.fn.stdpath('cache') .. '/catppuccin',
            flavour = 'mocha', -- latte, frappe, macchiato, mocha
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            default_integrations = false,
            integrations = {
                blink_cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = '',
                },
            },
        })
        vim.cmd.colorscheme('catppuccin')
    end,
}
