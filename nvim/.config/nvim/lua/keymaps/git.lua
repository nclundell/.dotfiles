local gs = require('gitsigns')
local map = require('utils.keymap')

map(
	'n',
	'<leader>gb',
	function() gs.blame_line({ full=true }) end,
	{
		desc = 'Git Blame'
	}
)

map(
	'n',
	'<leader>gd',
	function() gs.diffthis() end,
	{
		desc = 'Git Diff File'
	}
)
