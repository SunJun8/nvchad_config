local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "markdown",
    "make",
    "cmake",
    "go",
    "html",
    "rust",
    "lua",
  },

  indent = {
    enable = true,
  },

  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
  sync_install = false,
  auto_install = false,

  git = {
    ignore = 0
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua_ls",

    -- c/cpp
    "clangd",
    "clang-format",
    "cmake",

    -- rust
    "rust_analyzer",
  },
  automatic_installation = true,
}

M.mason_lspconfig = {
  ensure_installed =  {
    -- lua
    -- "lua_ls",

    -- c/cpp
    "clangd",
    "cmake",

    -- rust
    "rust_analyzer",
  }
}

-- git support in nvimtree
M.nvimtree = {
  disable_netrw = false,
  hijack_netrw = true,
  respect_buf_cwd = true,
  actions = {
    open_file = {
      resize_window = false,
      quit_on_open = false,
      window_picker = {
        enable = false
      }
    }
  },

  git = {
    enable = false,
    show_on_dirs = false,
    show_on_open_dirs = false,
    disable_for_dirs = {},
    timeout = 400,
  },

  filters = {
    dotfiles = true,
    custom = {
      'node_modules',
      '.cache',
    },
  },

  view = {
    width = 35,
    side = "left",
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
