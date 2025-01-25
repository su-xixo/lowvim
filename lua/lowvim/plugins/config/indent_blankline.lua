local idb = require("ibl")
local M = {}
local excludeFiletypes = {
    "TelescopeResults",
    "query",
    "tsplayground",
    "lazy",
    "lsp-installer",
    "markdown",
    "mason",
    "txt",
    "text",
    "dashboard",
    "alpha",
    "NvimTree",
    "undotree",
    "diff",
    "fugitive",
    "fugitiveblame",
    "Outline",
    "SidebarNvim",
    "packer",
    "lsp-installer",
    "TelescopePrompt",
    "help",
    "telescope",
    "lspinfo",
    "Trouble",
    "null-ls-info",
    "quickfix",
    "chadtree",
    "fzf",
    "NeogitStatus",
    "terminal",
    "console",
    "term://*",
    "Term://*",
    "toggleterm",
    "qf",
    "prompt",
    "noice",
    "",
}
local excludeBuftypes = {
    "terminal",
    "nofile",
}
local options = {
    indent = { 
        char  = "│", -- '┊'
        -- tab_char = '.', --{ "a", "b", "c" }
        repeat_linebreak = false,
    }, 
    whitespace = { highlight = { "Whitespace", "NonText" } },
    scope = { 
        enabled = false,
        char = '┃',
        show_start = false,
        show_end = false,
        exclude = { 
            language = {},
            -- filetypes = excludeFiletypes,
            -- buftypes = excludeBuftypes,
        } 
    },
}
M.setup = function()
    idb.setup(options)
end
return M