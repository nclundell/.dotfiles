local tb= require('telescope.builtin')
local map = require('utils.keymap')
local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

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

-- Telescope Misc Pickers
map(
	'n',
	'<leader>p',
	function() tb.commands(selection_layout) end,
	{
		desc = 'Available Commands'
	}
)

map(
	'n',
	'<leader><leader>',
	function() tb.keymaps(selection_layout) end,
	{ 
		desc = 'Defined Keymaps' 
	}
)
