local mini_notify = require('mini.notify')

-- custom message format
local custom_mssg_format = function(notif)
    local time = vim.fn.strftime('%H:%M', math.floor(notif.ts_update))
    return string.format('%s (%s)', notif.msg, time)
end

-- for showing notifications in bottom right corner
local win_config = function()
    local has_statusline = vim.o.laststatus > 0
    local pad = vim.o.cmdheight + (has_statusline and 1 or 0)
    return { anchor = 'SE', col = vim.o.columns, row = vim.o.lines - pad }
end

local M = {}
local options = {
    -- Content management
    content = {
        format = custom_mssg_format,
        sort = nil,
    },

    -- Notifications about LSP progress
    lsp_progress = {
        enable = true,
        duration_last = 1000,
    },

    -- Window options
    window = {
        config = win_config,
        max_width_share = 0.382,
        winblend = 25,
    },
}
local keymaps = function()
    local prefix = 'Notification'
    lowvim.map('n', '<leader>ns', function()
        mini_notify.show_history()
    end, { desc = prefix .. 'show' }) -- show notification
    lowvim.map('n', '<leader>nc', function()
        mini_notify.clear()
    end, { desc = prefix .. 'clear' }) -- clear notification
end
M.setup = function()
    mini_notify.setup(options)
    keymaps()
end
return M
