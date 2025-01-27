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


print(vim.inspect(extract("lsp", languages)))