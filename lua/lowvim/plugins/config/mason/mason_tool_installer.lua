local mason_tool_installer = require('mason-tool-installer')

local mason_tool_installer_options = {
    ensure_installed = lowvim.extract('tool', languages),
}

-- mason setups
local M = {}
M.setup = function()
    mason_tool_installer.setup(mason_tool_installer_options)
end
return M
