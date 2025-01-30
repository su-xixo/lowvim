-- local languages = {
--     { name = "server1", treesitter = { "lua", "vim" } },
--     { name = "server2", treesitter = nil },
--     { name = "server3", treesitter = { "python" } },
--     { name = "server4", treesitter = { "javascript", "typescript" } },
-- }

local languages = require("lowvim.plugins.config.languages")
-- local result = vim.tbl_values(vim.tbl_flatten(vim.tbl_map(
--     function(s) return s.treesitter end,
--     vim.tbl_filter(function(s) return s.treesitter end, languages)
-- )))

-- print(vim.inspect(result))
-- print(vim.inspect(vim.tbl_filter(function(s) return s.treesitter end, languages)))
-- print(vim.inspect(vim.tbl_map(
--     function(s) return s.treesitter end,
--     vim.tbl_filter(function(s) return s.treesitter end, languages)
-- )))
-- print(vim.inspect(vim.tbl_flatten(vim.tbl_map(
--     function(s) return s.treesitter end,
--     vim.tbl_filter(function(s) return s.treesitter end, languages)
-- ))))
-- print(vim.inspect(vim.tbl_values(vim.tbl_flatten(vim.tbl_map(
--     function(s) return s.treesitter end,
--     vim.tbl_filter(function(s) return s.treesitter end, languages)
-- )))))

local extract = function(object, table)
    -- object: key, table: nested table
    -- return: flat table of values
    local object = object or ''
    -- print(object, table)
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


-- print(vim.inspect(extract("lsp", languages)))


local keymap = function(mode, lhs, rhs, arg)
    local opts = {}
    -- Default options
    local default_opts = {
        noremap = true,
        silent = opts.silent ~= false, -- default silent
        expr = opts.expr or false,
        desc = opts.desc or nil, -- default no description
    }

    if type(arg) == "string" then
        opts.desc = arg
    elseif type(arg) == "table" then
        opts = arg
    end
    local final_opts = vim.tbl_deep_extend('force',default_opts, opts)
    -- return final_opts
    print(vim.inspect(arg))
    print(vim.inspect(default_opts))
    print(vim.inspect(opts))
    print(vim.inspect(final_opts))

    -- vim.keymap.set(mode, lhs, rhs, final_opts)

    -- example
    -- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) 
    -- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle file explorer") 
end
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "XXXXXXXXXX")
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = false }) 
-- print(vim.inspect(map()))
-- print(vim.inspect(map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle file explorer")))


local function string_to_table(key, value)
    return { [key] = value }
end


-- local function map(mode, lhs, rhs, ...)
--     local args = { ... }
--     local opts = {}

--     if #args == 1 and type(args[1]) == "string" then
--         opts = string_to_table("desc", args[1])
--     elseif #args == 1 and type(args[1]) == "table" then
--         opts = args[1]
--     end

--     local default_opts = { noremap = true, silent = true }
--     local final_opts = vim.tbl_deep_extend("force", default_opts, opts)

--     print(vim.inspect(arg))
--     print(vim.inspect(default_opts))
--     print(vim.inspect(opts))
--     print(vim.inspect(final_opts))

--     -- vim.keymap.set(mode, lhs, rhs, final_opts)
-- end

-- map("n", "<leader>e", ":NvimTreeToggle<CR>", "Toggle file explorer")

-- map("n", "<leader>e", ":NvimTreeToggle<CR>", "Toggle file explorer")
-- map("n", "<leader>w", ":w<CR>", { silent = false, desc = "Save file" })