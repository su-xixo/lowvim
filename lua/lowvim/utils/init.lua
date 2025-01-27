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

M.extract = function(object, table)
    -- object: key, table: nested table
    -- return: flat table of values

    local object = object or ''
    
    -- filters out only truthy values
    local filter = vim.tbl_filter(function(item) return item[object] end,table)
    -- map: apply function to each value
    local map = vim.tbl_map(function(item)
        local item = item[object] or {}
        if vim.islist(item) then
            return item          
        else
            -- table.insert(item, vim.tbl_values(item))
            return vim.tbl_values(item)
        end
    end,filter)
    -- flatten: single table from nested table
    local flatten = vim.tbl_flatten(map)

    -- table values
    local values = vim.tbl_values(flatten)
    return values
end
return M