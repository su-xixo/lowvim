local mason_lspconfig = require("mason-lspconfig")

local mason_lspconfig_options = {

}

-- mason setups
local M = {}
M.setup = function()
    mason_lspconfig.setup(mason_lspconfig_options)
end
return M