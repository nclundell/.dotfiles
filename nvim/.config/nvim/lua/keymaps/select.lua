local tb= require('telescope.builtin')
local map = require('utils.keymap')
local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

map(
	'n',
	'<leader>sb',
	function() tb.buffers(selection_layout) end,
	{
		desc = 'Select Buffers'
	}
)

map(
	'n',
	'<leader>sc',
	function() tb.colorscheme(selection_layout) end,
	{
		desc = 'Select Colorscheme'
	}
)
