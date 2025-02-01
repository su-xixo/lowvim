local mason_lspconfig = require('mason-lspconfig')

local mason_lspconfig_options = {
    ensure_installed = lowvim.extract('lsp', languages),
    automatic_installation = false,
    handlers = nil,
}

-- mason setups
local M = {}
M.setup = function()
    mason_lspconfig.setup(mason_lspconfig_options)
end
return M
