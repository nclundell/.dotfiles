-- require('plugins.configs.telescope.keybinds')

require('telescope').setup{
	defaults = {
		file_ignore_patterns = { 'node_modules' },
		layout_config = {
			prompt_position = 'top'
		},
		sorting_strategy = 'ascending'
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				previewer = false
			}
		}
  }
}

-- Load Extensions
require('telescope').load_extension('env')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')
