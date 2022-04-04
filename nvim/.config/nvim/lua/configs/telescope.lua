return function() 
  local ts = require('telescope')

  ts.setup{
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
  ts.load_extension('fzf')
  ts.load_extension('packer')
  ts.load_extension('ui-select')


  -- Mappings
  local map = require('utils').map

  local tb = "require('telescope.builtin')"
  local selection_layout = "require('telescope.themes').get_dropdown({ previewer = false })"

  map('n', '<leader>ff', '<CMD> lua '..tb..'.find_files() <CR>')
  map('n', '<leader>gf', '<CMD> lua '..tb..'.git_files() <CR>')
  map('n', '<leader>sb', '<CMD> lua '..tb..'.buffers('..selection_layout..') <CR>')
  map('n', '<leader>sc', '<CMD> lua '..tb..'.colorscheme('..selection_layout..') <CR>')
  map('n', '<leader>sv', '<CMD> lua '..tb..'.treesitter() <CR>')
  map('n', '<leader>sw', '<CMD> lua '..tb..'.grep_string() <CR>')

end
