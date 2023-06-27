require('windows').setup {
  animation = {
    enable = false,
  }
}

local map = require('utils.keymap')
local commands = require('windows.commands')
map('n', '<leader>we', function() commands.equalize() end, { desc = 'Equalize Window' })
map('n', '<leader>wm', function() commands.maximize() end, { desc = 'Maximize Window' })
