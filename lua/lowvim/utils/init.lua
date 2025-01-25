local M = {}

M.load_config = function(config_name)
    return require("lowvim.plugins.config."..config_name)
end

M.map = function(mode, lhs, rhs, opts)
    opts = opts or {}
    -- Default options
    local default_opts = {
        noremap = true,
        silent = opts.silent ~= false, -- default silent
        expr = opts.expr or false,
        desc = opts.desc or nil, -- default no description
    }

    local final_opts = vim.tbl_deep_extend('force',default_opts, opts)
    vim.keymap.set(mode, lhs, rhs, final_opts)

    -- example
    -- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) 
end
return M