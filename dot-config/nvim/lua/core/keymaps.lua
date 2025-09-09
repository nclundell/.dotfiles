local map = vim.keymap.set

-- Folding
map('n', ';', '@=(foldlevel(".")?"za": ";") <CR>', { noremap = true })

-- Buffer Movement
-- map('n', '<c-h>', '<C-w>h', { noremap = true })
-- map('n', '<c-j>', '<C-w>j', { noremap = true })
-- map('n', '<c-k>', '<C-w>k', { noremap = true })
-- map('n', '<c-l>', '<C-w>l', { noremap = true })

-- Write and Close Files
map('n', '<leader>c', '<CMD> bd <CR>', { noremap = true })
map('n', '<leader>C', '<CMD> bd! <CR>', { noremap = true })
map('n', '<leader>q', '<CMD> q <CR>', { noremap = true })
map('n', '<leader>Q', '<CMD> qa! <CR>', { noremap = true })
map('n', '<leader>w', '<CMD> w <CR>', { noremap = true })
map('n', '<leader>W', '<CMD> wa! <CR>', { noremap = true })

-- Indent and Unindent
map('x', '>', '>gv', { noremap = true })
map('x', '<', '<gv', { noremap = true })

-- Terminal Mode
-- map('t', 'jk', '<c-\\><c-n>', { desc = 'Exit Terminal Mode' })
