local mini_notify = require("mini.notify")
local M = {}
local options = {

}
local keymaps = function()

end
M.setup = function()
    mini_notify.setup(options)
    keymaps()
end
return M