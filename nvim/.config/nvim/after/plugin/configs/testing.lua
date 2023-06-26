local neotest = require('neotest')

neotest.setup({
  adapters = {
    require("neotest-minitest"),
    require("neotest-rspec")
  },
})

-- Keymaps
local map = require('utils.keymap')

map('n', '<leader>at', function() neotest.run.attach() end, { desc = 'Attach To Test' })
map('n', '<leader>rt', function() neotest.run.run() end, { desc = 'Run Test' })
map('n', '<leader>rf', function() neotest.run.run(vim.fn.expand("%")) end, { desc = 'Run Test File' })
map('n', '<leader>tr', function() neotest.output.open() end, { desc = 'Test Results' })
map('n', '<leader>ts', function() neotest.summary.toggle() end, { desc = 'Test Summary' })
