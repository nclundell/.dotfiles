-- Base Settings
vim.o.mouse = 'a'
vim.g.mapleader = ','

local settings = {
  "backspace",
  "buffers",
  "colorscheme",
  "completion",
  "folds",
  "indent",
  "ui",
  "wildmenu"
}

for _, setting in ipairs(settings) do
  require("settings."..setting)
end
