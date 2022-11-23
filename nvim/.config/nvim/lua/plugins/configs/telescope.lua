local telescope = require('telescope')

telescope.setup{
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
telescope.load_extension('env')
telescope.load_extension('file_browser')
telescope.load_extension('fzf')
telescope.load_extension('toggletasks')
telescope.load_extension('ui-select')
