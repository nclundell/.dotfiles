local dapui = require('dapui')
local dapvt = require('nvim-dap-virtual-text')
dapui.setup {}
dapvt.setup {}

-- Keymaps
local map = require('utils.keymap')

map('n', '<leader>d', function() dapui.toggle() end, { desc = 'Toggle DAP UI' })
