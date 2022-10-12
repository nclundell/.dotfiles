local Terminal  = require('toggleterm.terminal').Terminal
local dadbod = Terminal:new({ cmd = "nvim -c 'DBUIToggle'", hidden = true })
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
local scratchpad = Terminal:new({ hidden = true })

local map = require('utils.keymap')

map(
  'n',
	'<leader>tb',
	function() require('gitsigns').toggle_current_line_blame() end,
	{
		desc = 'Toggle Git Blame'
	}
)

map(
  {'n', 't'},
	'<leader>td',
	function() dadbod:toggle() end,
	{
		desc = 'Toggle DB Browser'
	}
)

map(
  'n',
	'<leader>tf',
	function() require('nvim-tree').toggle() end,
	{
		desc = 'Toggle File Tree'
	}
)

map(
  {'n', 't'},
	'<leader>tg',
	function() lazygit:toggle() end,
	{
		desc = 'Toggle Git'
	}
)

map(
  {'n', 't'},
	'<leader>ts',
	function() scratchpad:toggle() end,
	{
		desc = 'Toggle Scratchpad'
	}
)
