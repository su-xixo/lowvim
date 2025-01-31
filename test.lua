-- local languages = {
--     { name = "server1", treesitter = { "lua", "vim" } },
--     { name = "server2", treesitter = nil },
--     { name = "server3", treesitter = { "python" } },
--     { name = "server4", treesitter = { "javascript", "typescript" } },
-- }

-- local languages = require('lowvim.plugins.config.languages')
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

-- local extract = function(object, table)
--     -- object: key, table: nested table
--     -- return: flat table of values
--     local object = object or ''
--     -- print(object, table)
--     -- filters out only truthy values
--     local filter = vim.tbl_filter(function(item)
--         return item[object]
--     end, table)
--     -- map: apply function to each value
--     local map = vim.tbl_map(function(item)
--         local item = item[object] or {}
--         if vim.islist(item) then
--             return item
--         else
--             -- table.insert(item, vim.tbl_values(item))
--             return vim.tbl_values(item)
--         end
--     end, filter)
--     -- flatten: single table from nested table
--     local flatten = vim.tbl_flatten(map)

--     -- table values
--     local values = vim.tbl_values(flatten)
--     return values
-- end

-- local test_languages = {
--     {
--         ft = 'javascript',
--         treesitter = { 'javascript' },
--         tool = {
--             linter = { 'eslint' },
--             formatter = { 'prettier' },
--             dap = {},
--         },
--         lsp = { 'tsserver' },
--     },
--     {
--         ft = 'go',
--         treesitter = { 'go' },
--         tool = {
--             linter = {},
--             formatter = { 'gofmt', 'xxx' },
--             dap = {},
--         },
--         lsp = { 'gopls' },
--     },
--     {
--         ft = 'rust',
--         treesitter = { 'rust' },
--         tool = {
--             linter = {},
--             formatter = { 'zzz' },
--             dap = {},
--         },
--         lsp = { 'rust_analyzer' },
--     },
--     {
--         ft = 'rust',
--         treesitter = { 'json' },
--         tool = {
--             linter = {},
--             formatter = { 'zzzz' },
--             dap = {},
--         },
--         lsp = {},
--     },
-- }

-- -- extract column
-- local extract_column = function()
--     local list = {}
--     local filter = vim.tbl_filter(function(item)
--         return item.ft and not vim.tbl_isempty(item.tool.formatter)
--     end, test_languages)

--     for _, item in ipairs(filter) do
--         if type(item) == 'string' then
--             return {item}
--         end
--         if not list[item.ft] then
--             list[item.ft] = {}
--         end
--         vim.list_extend(list[item.ft], item.tool.formatter)
--     end

--     -- local map = vim.tbl_map(function(item)
--     --     return {[item.ft] = item.tool.formatter}
--     -- end, filter)
--     -- local map = {}
--     -- for i,item in ipairs(filter) do
--     --     map[item.ft] = item.tool.formatter
--     -- end
--     -- print(vim.inspect(languages))
--     -- print(vim.inspect(list))
--     return list
-- end
-- -- python = { "isort", "black" },
-- local exended_list = {
--     a = {'a'},
--     b = {'b', 'c'},
-- }

-- print(vim.inspect(vim.tbl_deep_extend("force", exended_list, extract_column())))
-- print(vim.inspect(extract("tool", languages)))

-- local keymap = function(mode, lhs, rhs, arg)
--     local opts = {}
--     -- Default options
--     local default_opts = {
--         noremap = true,
--         silent = opts.silent ~= false, -- default silent
--         expr = opts.expr or false,
--         desc = opts.desc or nil, -- default no description
--     }

--     if type(arg) == "string" then
--         opts.desc = arg
--     elseif type(arg) == "table" then
--         opts = arg
--     end
--     local final_opts = vim.tbl_deep_extend('force',default_opts, opts)
--     -- return final_opts
--     print(vim.inspect(arg))
--     print(vim.inspect(default_opts))
--     print(vim.inspect(opts))
--     print(vim.inspect(final_opts))

--     -- vim.keymap.set(mode, lhs, rhs, final_opts)

--     -- example
--     -- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
--     -- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle file explorer")
-- end
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "XXXXXXXXXX")
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = false })
-- print(vim.inspect(map()))
-- print(vim.inspect(map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle file explorer")))

-- local function string_to_table(key, value)
--     return { [key] = value }
-- end

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

-- local extract_formatter = function(lang)
--     local list = {}
--     local filter = vim.tbl_filter(function(item)
--         return item.ft and not vim.tbl_isempty(item.tool.formatter)
--     end, lang)

--     for _, item in ipairs(filter) do
--         if type(item) == 'string' then
--             return { item }
--         end
--         if not list[item.ft] then
--             list[item.ft] = {}
--         end
--         vim.list_extend(list[item.ft], item.tool.formatter)
--     end

--     return list
-- end
-- local extended_formatter_list = {}
-- print(
--     vim.inspect(
--         vim.tbl_deep_extend(
--             'force',
--             extract_formatter(languages),
--             extended_formatter_list
--         )
--     )
-- )

-- preetier message
local prettier_mssg = function(message, max_char)
    local mssg = message or 'Sample'
    local max_char = max_char or 18

    local prefix_padding = (max_char / 2) - (math.floor(#mssg / 2))
    local suffix_padding = (max_char / 2) - (#mssg - math.floor(#mssg / 2))
    local rep = function(c, n)
        local str = ''
        for i = 1, n do
            str = str .. c
        end
        return str
    end

    local res = string.format(
        '--%s %s %s--',
        rep(' ', prefix_padding),
        mssg,
        rep(' ', suffix_padding)
    )
    local mssg_res =
        string.format('%s\n%s\n%s\n', rep('-', #res), res, rep('-', #res))
    print(mssg_res)

    os.execute('echo "' .. mssg_res .. '" | xclip -selection clipboard')
    -- os.exit()
end

local function main()
    prettier_mssg('function message', 35)
end
main()
