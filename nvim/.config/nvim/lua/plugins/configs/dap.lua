return function()
	local dapui = require('dapui')
	local dapvt = require('nvim-dap-virtual-text')
	dapui.setup {}
	dapvt.setup {}

	local map = require('utils.keymap')

	-- Keymaps
	map('n', '<leader>d', function() dapui.toggle() end, { desc = 'Toggle DAP UI' })
end
