vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- gloval utils variable
_G.lowvim = require("lowvim.utils")

require 'lowvim.core.options'
require 'lowvim.core.keymaps'
require 'lazy-bootstrap'
require 'lazy-plugins'