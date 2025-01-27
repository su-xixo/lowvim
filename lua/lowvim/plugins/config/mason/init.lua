local mason = require("mason")

local mason_options = {
    max_concurrent_installers = 2,
    ui = {
        border = 'rounded',
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
    },
    registries = {
        'github:mason-org/mason-registry',
    },
}

-- mason setups
local M = {}
M.setup = function()
    mason.setup(mason_options)
end
return M