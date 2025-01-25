return {
    -- indent line
    {
        -- indent blankline
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufReadPre", "BufNewFile", "BufEnter" },
        config = function()
            lowvim.load_config("indent_blankline").setup()
        end,
    },
    {
        -- mini indent scope
        "echasnovski/mini.indentscope",
        version = '*',
        config = function()
            lowvim.load_config("mini_indentscope").setup()
        end,
    },
    -- notify
    {
        -- mini.nvim
        'echasnovski/mini.notify',
         version = '*',
         init = function()
            vim.notify = require('mini.notify').make_notify()
        end,
         config = function()
            lowvim.load_config("mini_notify").setup()
         end,
    },
    
}