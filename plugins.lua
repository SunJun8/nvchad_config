local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  -- {
  --   "NvChad/base46",
  --   enabled = false,
  -- },

  -- {
  --   "NvChad/ui",
  --   enabled = false,
  -- },
  {
    "neovim/nvim-lspconfig",
    -- BufRead is to make sure if you do nvim some_file then this is still going to be loaded
    event = { "VeryLazy", "BufRead" },
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "williamboman/mason.nvim",
      },
      {
        "williamboman/mason-lspconfig",
        config = function ()
          require("mason-lspconfig").setup(
            overrides.mason_lspconfig
          )
        end
      }
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "ojroques/nvim-lspfuzzy",
    init = function()
      require("core.utils").lazy_load "nvim-lspfuzzy"
    end,
    dependencies = {
      {
        "junegunn/fzf",
      },
      {
        "junegunn/fzf.vim",
      }
    },
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = "p00f/nvim-ts-rainbow",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- themes
  {
    "sainnhe/sonokai",
    lazy = false
  },

  -- community
  "NvChad/nvcommunity",
  { import = "nvcommunity.editor.autosave" },
  { import = "nvcommunity.editor.treesittercontext" },
  { import = "nvcommunity.lsp.lspsaga" },
  { import = "nvcommunity.completion.copilot" },
  { "copilot.lua",
    build = ":Copilot auth",
    enable = false,
    dependencies = {
      "zbirenbaum/copilot-cmp",
      config = function ()
        require("copilot_cmp").setup()
      end
    },
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
