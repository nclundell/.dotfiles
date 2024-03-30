return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',

      -- Extensions
      'LinArcX/telescope-env.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'debugloop/telescope-undo.nvim',
      'natecraddock/telescope-zf-native.nvim',
      'ThePrimeagen/git-worktree.nvim',
    },
    opts = {
      defaults = {
        file_ignore_patterns = { 'node_modules' },
        layout_config = {
          prompt_position = 'top'
        },
        sorting_strategy = 'ascending'
      }
    },
    cmd = {
      'Telescope'
    },
    keys = {
      -- Commands and Keymaps
      { '<leader><leader>', function() require('telescope.builtin').keymaps(require('telescope.themes').get_dropdown({ previewer = false })) end, desc = 'List Keymaps' },
      { '<leader>p', function() require('telescope.builtin').commands(require('telescope.themes').get_dropdown({ previewer = false })) end, desc = 'List Commands' },

      -- List
      { '<leader>lm', function() require('telescope.builtin').marks() end, desc = 'List Marks' },
      { '<leader>ln', function() require('telescope').extensions.notify.notify({ initial_mode = 'normal' }) end, desc = 'List Man Pages' },
      { '<leader>lr', function() require('telescope.builtin').registers() end, desc = 'List Registers' },
      { '<leader>ls', function() require('telescope.builtin').lsp_document_symbols() end, desc = 'List Document Symbols' },
      { '<leader>lS', function() require('telescope.builtin').lsp_workspace_symbols() end, desc = 'List Workspace Symbols' },
      { '<leader>lt', function() require('telescope.builtin').treesitter() end, desc = 'List Treesitter Symbols' },

      -- Open
      { '<leader>of', function() require('telescope.builtin').find_files({ prompt_title = 'Project Files' }) end, desc = 'Open Project Files' },
      { '<leader>oh', function() require('telescope.builtin').help_tags({ prompt_title = 'Help Docs' }) end, desc = 'Open Help Docs' },
      { '<leader>or', function() require('telescope.builtin').oldfiles({ prompt_title = 'Recent Files' }) end, desc = 'Open Recent Files' },
      { '<leader>ot', function() require('telescope.builtin').find_files({ prompt_title = 'Test Files', search_dirs = { 'specs', 'tests' } }) end, desc = 'Open Test Files' },

      -- Search
      { '<leader>/', function() require('telescope.builtin').current_buffer_fuzzy_find() end, desc = 'Fuzzy Search Buffer' },
      { '<leader>sa', function() require('telescope.builtin').live_grep({ prompt_title = 'Search Files' }) end, desc = 'Search Project Files' },
      { '<leader>st', function() require('telescope.builtin').find_files({ prompt_title = 'Search Test Files', search_dirs = { 'specs', 'tests' } }) end, desc = 'Search Test Files' },

      -- Select Pickers
      { '<leader>sb', function() require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ initial_mode = 'normal', previewer = false })) end, desc = 'Select Buffers' },
      { '<leader>sc', function() require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({ enable_preview = true, initial_mode = 'normal', previewer = false })) end, desc = 'Select Colorscheme' },
    }
  }
}
