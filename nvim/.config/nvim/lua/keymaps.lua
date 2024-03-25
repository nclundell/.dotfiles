local map = vim.api.nvim_set_keymap

-- Folding
map('n', ';', '@=(foldlevel(".")?"za": ";") <CR>', { noremap = true })

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
