------------------------------------
--             Options            --
------------------------------------

local opt = vim.opt
local o = vim.o
local g = vim.g

-- General
opt.backup = false -- Disable backup files
opt.writebackup = false -- Disable write backup
opt.swapfile = false -- Disable swap files
opt.undofile = true -- Enable persistent undo
opt.clipboard = 'unnamedplus' -- Use system clipboard
opt.mouse = 'a' -- Enable mouse support
opt.hidden = true -- Keep buffers open in the background
opt.termguicolors = true -- Enable true colors

-- UI
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.cursorline = true -- Highlight the current line
opt.signcolumn = 'yes' -- Always show the sign column
opt.scrolloff = 8 -- Minimum number of lines to keep above/below cursor
opt.sidescrolloff = 8 -- Minimum number of columns to keep left/right of cursor

-- Indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Number of spaces for indentation
opt.tabstop = 4 -- Number of spaces per tab
opt.softtabstop = 4 -- Make <BS> respect indentation
opt.autoindent = true -- Enable auto-indentation
opt.smartindent = true -- Enable smart indentation

-- Searching
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Override ignorecase if uppercase letters are used
opt.hlsearch = true -- Highlight search results
opt.incsearch = true -- Show search matches as you type

-- Splitting
opt.splitright = true -- Open vertical splits to the right
opt.splitbelow = true -- Open horizontal splits below

-- Wrapping
opt.wrap = false -- Disable line wrapping
opt.linebreak = true -- Wrap lines at word boundaries

-- Performance
opt.updatetime = 300 -- Faster completion response time
opt.timeoutlen = 500 -- Shorten mapped sequence wait time
opt.lazyredraw = true -- Optimize performance by delaying redraws

-- Completion
opt.completeopt = { 'menuone', 'noselect' } -- Better completion experience

-- Wildmenu
opt.wildmode = 'longest:full,full' -- Better command-line completion
opt.wildignore = { '*.o', '*.a', '*.class', '*.pyc', '*.git', '*.svn' }

-- Encoding
opt.fileencoding = 'utf-8' -- Set file encoding to UTF-8

-- Backspace Behavior
opt.backspace = { 'indent', 'eol', 'start' } -- Make backspace more powerful

-- Disable built-in plugins
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Set leader key
g.mapleader = ' '
g.maplocalleader = ' '
