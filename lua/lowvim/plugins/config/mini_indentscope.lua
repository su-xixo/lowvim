local mini_indentscope = require("mini.indentscope")
local M = {}
local options = {
    symbol = '┃', --"│",
  draw = {
    animation = mini_indentscope.gen_animation.none(),
  },
     mappings = {
        -- Textobjects
        object_scope = '', -- "ii"
        object_scope_with_border = '', -- "ai"
        -- Motions
        goto_top = '', -- "[i"
        goto_bottom = '', -- "]i"
      },
      options = {
        border = 'both', -- 'both', 'top', 'bottom', 'none'
        indent_at_cursor = true,
        n_lines = 10000,
        try_as_border = true,
      },
}
M.init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "Trouble",
        "alpha",
        "dashboard",
        "fzf",
        "help",
        "lazy",
        "mason",
        "neo-tree",
        -- "notify",
        -- "snacks_dashboard",
        -- "snacks_notif",
        -- "snacks_terminal",
        -- "snacks_win",
        "toggleterm",
        "trouble",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })

    -- vim.api.nvim_create_autocmd("User", {
    --   pattern = "SnacksDashboardOpened",
    --   callback = function(data)
    --     vim.b[data.buf].miniindentscope_disable = true
    --   end,
    -- })
end
M.setup = function()
    mini_indentscope.setup(options)
    M.init()
end
return M