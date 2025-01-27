local mason_tool_installer = require("mason-lspconfig")

local mason_tool_installer_options = {

}

-- mason setups
local M = {}
M.setup = function()
    mason_tool_installer.setup(mason_tool_installer_options)
end
return M