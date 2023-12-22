local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd
local config = require("core.utils").load_config()

-------------------------------------- globals -----------------------------------------

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ","
g.autoformat_enabled = false
g.autopairs_enabled = true
g.icons_enabled = true

-----------------------------------------------------------
-- opt
-----------------------------------------------------------
opt.mouse = 'niv'                     -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.swapfile = false                  -- Don't use swapfile
opt.spell = false                     -- sets vim.opt.spell
opt.signcolumn = "auto"                -- sets vim.opt.signcolumn to auto
opt.wrap = false                       -- sets vim.opt.wrap
opt.number = true                     -- Show line number
opt.relativenumber = true             -- Show line number
opt.showmatch = true                  -- Highlight matching parenthesis
opt.ignorecase = true                 -- Ignore case letters when search
opt.smartcase = true                  -- Ignore lowercase for the whole pattern
opt.termguicolors = true              -- set cursorcolumn
opt.cursorline = true                 -- 高亮当前行
opt.ruler = true                      -- 显示当前行号及列号
opt.cindent = true                    -- C 缩进
opt.hlsearch = true                   -- 高亮搜索
opt.incsearch = true                  -- 键入搜索
opt.foldenable = false                -- 取消自动折叠
opt.showmode = false                  -- 不显示status

-----------------------------------------------------------
-- themes
-----------------------------------------------------------
g.sonokai_style = 'espresso'
-- g.sonokai_style = 'default'
g.sonokai_enable_italic = false
g.sonokai_disable_italic_comment = true
g.sonokai_transparent_background = false
g.sonokai_diagnostic_text_highlight = false


-- Auto resize panes when resizing nvim window
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

vim.filetype.add {
  extension = {
    defs = "make",
  },
  --   filename = {
  --     ["Make.defs"] = "make",
  --   },
  --   pattern = {
  --     ["~/%.config/foo/.*"] = "fooscript",
  --   },
}
