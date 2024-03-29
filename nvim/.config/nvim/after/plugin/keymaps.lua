local map = require('utils.keymap')

-- Handle Buffers
map('n', '<leader>q', '<CMD> bd <CR>')
map('n', '<leader>w', '<CMD> w <CR>')
map('n', '<leader>x', '<CMD> x <CR>')

-- Navigate Windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Turn Off Search Highlight
map("n", "<ESC>", "<CMD> nohl <CR>")

-- (Un)Fold With Spacebar
map("n", "<Space>", "@=(foldlevel('.')?'za': '<Space>') <CR>")

-- Visual Mode Indenting
map("x", ">", ">gv")
map("x", "<", "<gv")

-- Yank to System Clipboard
map('n', '<leader>Y', '"+yg_')
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')

-- Paste from System Clipboard
map('n', '<leader>p', '"+p')
map('n', '<leader>P', '"+P')
map('v', '<leader>p', '"+p')
map('v', '<leader>P', '"+P')
