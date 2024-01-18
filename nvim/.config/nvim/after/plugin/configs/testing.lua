local neotest = require('neotest')

neotest.setup({
  adapters = {
    require("neotest-minitest"),
    require("neotest-rspec")
  },
  floating = {
    border = "rounded",
    max_height = 0.8,
    max_width = 0.8
  },
  summary = {
    follow = true
  }
})

-- Keymaps
local map = require('utils.keymap')

map('n', '<leader>rt', function() neotest.run.run() end, { desc = 'Run Test' })
map('n', '<leader>rT', function() neotest.run.run(vim.fn.expand("%")) end, { desc = 'Run Test File' })
map('n', '<leader>ta', function() neotest.run.attach() end, { desc = 'Attach To Test' })
map('n', '<leader>ts', function() neotest.summary.toggle() end, { desc = 'Test Summary' })
map('n', '<leader>to', function() neotest.output.open({ enter = true, auto_close = true }) end, { desc = 'Test Output' })
map('n', '<leader>tO', function() neotest.output_panel.toggle() end, { desc = 'Test Output Panel' })
