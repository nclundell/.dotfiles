return function ()
  local telescope = require('telescope')
  local tb= require('telescope.builtin')

  telescope.setup {
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
          -- even more opts
        }
      }
    }
  }

  -- Load Extensions
  telescope.load_extension('env')
  telescope.load_extension('fzf')
  telescope.load_extension('ui-select')
  telescope.load_extension('file_browser')
end
