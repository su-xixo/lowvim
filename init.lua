vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- gloval utils variable
_G.lowvim = require('lowvim.utils')
_G.languages = require('lowvim.plugins.config.languages')

require('lowvim.core.options')
require('lowvim.core.keymaps')
require('lazy-bootstrap')
require('lazy-plugins')
