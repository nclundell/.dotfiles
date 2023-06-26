require('toggleterm').setup {
  direction = 'float'
}

local Terminal  = require('toggleterm.terminal').Terminal
local dadbod = Terminal:new({ cmd = "nvim -c 'DBUIToggle'", hidden = true })
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
local scratchpad = Terminal:new({ hidden = true })

-- Keymaps
local map = require('utils.keymap')

map({'n', 't'}, 'DD', function() dadbod:toggle() end, { desc = 'Toggle DB Browser' })
map({'n', 't'}, 'GG', function() lazygit:toggle() end, { desc = 'Toggle Git' })
map({'n', 't'}, 'TT', function() scratchpad:toggle() end, { desc = 'Toggle Scratchpad' })
