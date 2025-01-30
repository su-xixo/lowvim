-- local map = require('lowvim.core.utils').map
local telescope = require("telescope")
local builtin = require("telescope.builtin")

local M = {}
local options = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.95,
      preview_cutoff = 120,
    },
    -- prompt_prefix = "λ -> ",
    prompt_prefix = "   ",
    selection_caret = " ", -- "❯ "
    winblend = 0,
    border = {},
    borderchars = {
      -- preview = {"━", "┃", "━", "┃", "┏", "┓", "┛", "┗"},
      -- results = {"━", "┃", "━", "┃", "┏", "┓", "┛", "┗"},
      -- prompt = {" ", " ", " ", " ", " ", " ", " ", " "},
      preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      prompt = { "━", "┃", "━", "┃", "┏", "┓", "┛", "┗" },
    },
    path_display = {
      filename_first = {
        reverse_directories = false,
      },
    },
    set_env = { ["COLORTERM"] = "truecolor" },
    mappings = {},
  },
  extensions = {
    -- fzf = {
    --   fuzzy = true, -- false will only do exact matching
    --   override_generic_sorter = true, -- override the generic sorter
    --   override_file_sorter = true, -- override the file sorter
    --   case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    -- },
  },
}

local keymaps = function()
  local prefix = "Telescope: "
  lowvim.map("n", "<leader>ff", "<cmd>Telescope find_files theme=ivy<cr>", { desc = prefix .. "find files" })
  -- lowvim.map('n', '<leader>ff', builtin.find_files, {desc = prefix .. "find files"})
  lowvim.map("n", "<leader>fb", builtin.buffers, { desc = prefix .. "find buffers" })
end
M.setup = function()
  telescope.setup(options)
  keymaps()
end
return M
