return function() 

  require('telescope').setup{
    defaults = {
      file_ignore_patterns = { 'node_modules' },
      layout_config = {
        prompt_position = 'top'
      },
      sorting_strategy = 'ascending'
    },
    extensions = {
      project = {
        base_dirs = {
          {
            path = '~/Projects',
            max_depth = 2
          },
        },
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {
          previewer = false
        }
      }
    }
  }

  -- Load Extensions
  require('telescope').load_extension('fzf')
  require('telescope').load_extension('packer')
  require'telescope'.load_extension('project')
  require('telescope').load_extension('ui-select')

  -- Mappings
  local map = require('utils').luamap
  local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

  -- Buffer/File Pickers
  map('n', '<leader>bb', function() require('telescope.builtin').buffers(selection_layout) end)
  map('n', '<leader>ff', function() require('telescope.builtin').find_files() end)
  map('n', '<leader>gf', function() require('telescope.builtin').git_files() end)

  -- LSP Pickers
  map('n', '<leader>gd', function() require('telescope.builtin').lsp_definitions() end)
  map('n', '<leader>ld', function() require('telescope.builtin').diagnostics() end)
  map('n', '<leader>lr', function() require('telescope.builtin').lsp_references() end)
  map('n', '<leader>ls', function() require('telescope.builtin').lsp_document_symbols() end)

  -- Search
  map('n', '<leader>/',  function() require('telescope.builtin').current_buffer_fuzzy_find() end)
  map('n', '<leader>gl', function() require('telescope.builtin').live_grep() end)
  map('n', '<leader>gs', function() require('telescope.builtin').grep_string() end)
  map('n', '<leader>ts', function() require('telescope.builtin').treesitter() end)

  -- Selectors
  map('n', '<leader>sc', function() require('telescope.builtin').colorscheme(selection_layout) end)
  map('n', '<leader>sp', function() require('telescope').extensions.project.project(selection_layout) end)
  -- map('n', '<leader>sp', function() require('telescope').extensions.packer.packer() end)

end
