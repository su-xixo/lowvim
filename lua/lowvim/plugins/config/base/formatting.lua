local formatting = require('conform')
local extract_formatter = function(lang)
    local list = {}
    local filter = vim.tbl_filter(function(item)
        return item.ft and not vim.tbl_isempty(item.tool.formatter)
    end, lang)

    for _, item in ipairs(filter) do
        if type(item) == 'string' then
            return { item }
        end
        if not list[item.ft] then
            list[item.ft] = {}
        end
        vim.list_extend(list[item.ft], item.tool.formatter)
    end
    return list
end
local extended_formatter_list = {}

-- formatter setup
local options = {
    -- formatters_by_ft = {
    --     function()
    --         return vim.tbl_deep_extend("force", extract_formatter(languages), extended_formatter_list)
    --     end
    -- },
    formatters_by_ft = vim.tbl_deep_extend(
        'force',
        extract_formatter(languages),
        extended_formatter_list
    ),
    -- formatters_by_ft = {
    --     lua = {'stylua'},
    -- },
    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
    },
}
local keymaps = function()
    lowvim.map({ 'n', 'v' }, '<leader>mp', function()
        formatting.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
        })
    end, 'Format file or range (in visual mode)')
end
local M = {}
M.setup = function()
    formatting.setup(options)
    keymaps()
end
return M
