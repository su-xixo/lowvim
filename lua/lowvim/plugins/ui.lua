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
         config = function()
            lowvim.load_config("mini_notify").setup()
         end,
    },
    
}