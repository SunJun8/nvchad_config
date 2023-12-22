---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest",
  theme_toggle = { "everforest", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
    header = {
      "██   ██ ███    ██  ██████  ██     ██ ██      ███████ ██████   ██████  ███████      █████  ███████      █████   ██████ ████████ ██  ██████  ███    ██",
      "██  ██  ████   ██ ██    ██ ██     ██ ██      ██      ██   ██ ██       ██          ██   ██ ██          ██   ██ ██         ██    ██ ██    ██ ████   ██",
      "█████   ██ ██  ██ ██    ██ ██  █  ██ ██      █████   ██   ██ ██   ███ █████       ███████ ███████     ███████ ██         ██    ██ ██    ██ ██ ██  ██",
      "██  ██  ██  ██ ██ ██    ██ ██ ███ ██ ██      ██      ██   ██ ██    ██ ██          ██   ██      ██     ██   ██ ██         ██    ██ ██    ██ ██  ██ ██",
      "██   ██ ██   ████  ██████   ███ ███  ███████ ███████ ██████   ██████  ███████     ██   ██ ███████     ██   ██  ██████    ██    ██  ██████  ██   ████",
    },

    buttons = {
      { "  Find File", "Leader f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Leader f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Leader f w", "Telescope live_grep" },
      { "  Bookmarks", "Leader m a", "Telescope marks" },
      { "  Themes", "Leader t h", "Telescope themes" },
      { "  Mappings", "Leader c h", "NvCheatsheet" },
    },
  },

  statusline = {
    theme = "vscode", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
