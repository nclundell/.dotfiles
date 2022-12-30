vim.g.mapleader = ','
vim.g.maplocalleader = '<'

local keymap_groups = {
  'git',
  'list',
  'misc',
  'open',
  'run',
  'search',
  'select',
  'toggle'
}

for _, group in ipairs(keymap_groups) do
  require("keymaps."..group)
end
