local tb= require('telescope.builtin')
local map = require('utils.keymap')

map(
	'n',
	'<leader>of',
	function() tb.find_files({ prompt_title = "Files" }) end,
	{
		desc = 'Open Files'
	}
)

map(
	'n',
	'<leader>og',
	function() tb.git_files() end,
	{
		desc = 'Open Git Files'
	}
)

map(
	'n',
	'<leader>oh',
	function() tb.help_tags() end,
	{
		desc = 'Open Help Pages'
	}
)

map(
	'n',
	'<leader>om',
	function() tb.man_pages() end,
	{
		desc = 'Open Man Pages'
	}
)

map(
	'n',
	'<leader>or',
	function() tb.oldfiles({ prompt_title = "Recent Files" }) end,
	{
		desc = 'Open Recent Files'
	}
)

map(
	'n',
	'<leader>ot',
	function() tb.find_files({ prompt_title = "Tests", search_dirs = { "specs" } }) end,
	{
		desc = 'Open Test Files'
	}
)
