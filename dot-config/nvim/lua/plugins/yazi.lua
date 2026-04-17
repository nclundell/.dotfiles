vim.pack.add({'https://github.com/mikavilpas/yazi.nvim'})
vim.pack.add({'https://github.com/nvim-lua/plenary.nvim'})

require('yazi').setup {}

vim.keymap.set('n', '<leader>e', '<CMD>Yazi<CR>', { desc = 'Toggle File Browser At File' })
vim.keymap.set('n', '<leader>E', '<CMD>Yazi cwd<CR>', { desc = 'Toggle File Browser At Project Root' })
