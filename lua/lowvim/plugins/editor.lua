-- local load_config = require("lowvim.core.utils").load_config
return {
    -- file explorer
    {
        -- oil file explorer
        'stevearc/oil.nvim',
        cmd = "Oil",
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        keys = {
          { "<leader>;", function() require("oil").toggle_float() end, desc = "Toggle Oil" },
        },
        config = function()
          lowvim.load_config("oil")
        end,
    },
    {
      -- mini file explorer
      'echasnovski/mini.files',
      version = '*',
      dependencies = {
        { "echasnovski/mini.icons", opts = {} }
      },
      keys = {
        {"<leader>me",function()
          if not require("mini.files").close() then require("mini.files").open() end
        end, desc = "s"}
      },
      config = function()
        lowvim.load_config("mini_file")
      end,
    },
    {
      -- neo-tree file explorer
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
        cmd = "Neotree",
      keys = {
          { "<leader>e", "<Cmd>Neotree toggle<CR>", desc = "Toggle Filetree" },
        },
      dependencies = {
        "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        },
      config = function()
        lowvim.load_config('neo_tree')
      end,
    },

    -- file finder
    -- {
    --   -- fzf lua (file fizzy finder)
    --   "ibhagwan/fzf-lua",
    --   -- keys = {
    --   --   {},
    --   -- },
    --   dependencies = { { "echasnovski/mini.icons", opts = {} }, },
    --   config = function()
    --     load_config('fzf')
    --   end,
    -- },
    {
      -- telescope support
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      event = "VimEnter",
      -- cmd = "Telescope",
      dependencies = { 
        -- { "nvim-lua/popup.nvim" },
        { "nvim-lua/plenary.nvim" },
        -- { "cljoly/telescope-repo.nvim" },
        -- { "nvim-telescope/telescope-dap.nvim" },
        -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        -- { "nvim-telescope/telescope-live-grep-args.nvim" },
        -- { "jvgrootveld/telescope-zoxide" },
      },
      keys = {},
      config = function()
        lowvim.load_config("telescope").setup()
      end,
    },

    -- which key
}
