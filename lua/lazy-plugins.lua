require('lazy').setup({
    { import = 'lowvim.plugins.colorscheme.kanagawa' },
    { import = 'lowvim.plugins' },
    -- { import = 'lowvim.plugins.disabled', enable = false },
}, {
    ui = {
        border = 'double', -- You can choose from "single", "double", "rounded", "solid", "none"
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 ',
        },
    },
})
