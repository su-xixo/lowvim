-- local languages = {
--     { name = "server1", treesitter = { "lua", "vim" } },
--     { name = "server2", treesitter = nil },
--     { name = "server3", treesitter = { "python" } },
--     { name = "server4", treesitter = { "javascript", "typescript" } },
-- }

local languages = require("lowvim.plugins.config.languages")
local result = vim.tbl_values(vim.tbl_flatten(vim.tbl_map(
    function(s) return s.treesitter end,
    vim.tbl_filter(function(s) return s.treesitter end, languages)
)))

print(vim.inspect(result))
print(vim.inspect(vim.tbl_filter(function(s) return s.treesitter end, languages)))
print(vim.inspect(vim.tbl_map(
    function(s) return s.treesitter end,
    vim.tbl_filter(function(s) return s.treesitter end, languages)
)))
print(vim.inspect(vim.tbl_flatten(vim.tbl_map(
    function(s) return s.treesitter end,
    vim.tbl_filter(function(s) return s.treesitter end, languages)
))))
print(vim.inspect(vim.tbl_values(vim.tbl_flatten(vim.tbl_map(
    function(s) return s.treesitter end,
    vim.tbl_filter(function(s) return s.treesitter end, languages)
)))))