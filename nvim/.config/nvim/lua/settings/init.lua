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

-- Base Settings
vim.o.mouse = 'a'
vim.g.mapleader = ','

for _, setting in ipairs(settings) do
  require("settings."..setting)
end
