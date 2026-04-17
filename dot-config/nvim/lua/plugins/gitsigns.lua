vim.pack.add({'https://github.com/lewis6991/gitsigns.nvim'})

-- Keybinds
vim.keymap.set('n', '<leader>gb', function() require('gitsigns').blame_line({ full = true }) end, { desc = 'Show Line Blame' })

vim.keymap.set('n', '<leader>gB', function() require('gitsigns').toggle_current_line_blame() end,{ desc = 'Toggle Line Blame' })
