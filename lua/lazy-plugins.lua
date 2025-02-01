require('lazy').setup({
    spec = {
        { import = 'lowvim.plugins.colorscheme.catppuccin' },
        { import = 'lowvim.plugins' },
        -- { import = 'lowvim.plugins.disabled', enable = false },
    },
    install = { missing = false, colorscheme = { 'catppuccin', 'habamax' } },
    checker = { enabled = false },
    ui = {
        border = 'rounded',
        title = 'lazy.nvim',
        title_pos = 'center', ---@type "center" | "left" | "right"
        icons = {
            cmd = ' ',
            config = '',
            debug = '● ',
            event = ' ',
            favorite = ' ',
            ft = ' ',
            init = ' ',
            import = ' ',
            keys = ' ',
            lazy = '󰒲 ',
            loaded = '●',
            not_loaded = '○',
            plugin = ' ',
            runtime = ' ',
            require = '󰢱 ',
            source = ' ',
            start = ' ',
            task = '✔ ',
            list = {
                '●',
                '➜',
                '★',
                '‒',
            },
        },
    },
    change_detection = {
        enabled = false,
    },
})
