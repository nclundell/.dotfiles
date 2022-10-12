local tb = require('telescope.builtin')
local map = require('utils.keymap')

map(
	'n',
	'<leader>/',
	function() require('telescope.builtin').current_buffer_fuzzy_find() end,
	{ 
		desc = 'Enhanced Search' 
	}
)

map(
	'n',
	'<leader>so',
	function() tb.live_grep({ grep_open_files = true }) end,
	{
		desc = 'Search Open Files (Buffers)'
	}
)

map(
	'n',
	'<leader>sf',
	function() tb.live_grep() end,
	{
		desc = 'Search All Files'
	}
)

map(
	'n',
	'<leader>st',
	function() tb.live_grep({ search_dirs = { 'specs' } }) end,
	{
		desc = 'Search Tests'
	}
)
