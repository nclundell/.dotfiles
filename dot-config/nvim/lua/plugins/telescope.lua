return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',

    -- Extensions
    'LinArcX/telescope-env.nvim',
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
      path_display = { 'smart' },
      sorting_strategy = 'ascending'
    },
    pickers = {
      buffers = {
        theme = 'dropdown',
        previewer = false
      },
      colorscheme = {
        theme = 'dropdown',
        previewer = false
      },
      commands = {
        theme = 'dropdown',
        previewer = false
      },
      current_buffer_fuzzy_find = {
        prompt_title = 'Search Current File'
      },
      help_tags = {
        prompt_title = 'Help Files'
      },
      find_files = {
        prompt_title = 'Project Files'
      },
      keymaps = {
        theme = 'dropdown',
        previewer = false
      },
      live_grep = {
        prompt_title = 'Search Project'
      },
      oldfiles = {
        prompt_title = 'Recent Files'
      }
    }
  },
  cmd = {
    'Telescope'
  },
  keys = {
    -- Commands and Keymaps
    { '<leader><leader>', require('telescope.builtin').keymaps, desc = 'List Keymaps' },
    { '<leader>p', require('telescope.builtin').commands , desc = 'List Commands' },

    -- List
    { '<leader>lm', require('telescope.builtin').marks, desc = 'List Marks' },
    { '<leader>lr', require('telescope.builtin').registers, desc = 'List Registers' },
    { '<leader>ls', require('telescope.builtin').lsp_document_symbols, desc = 'List Document Symbols' },
    { '<leader>lS', require('telescope.builtin').lsp_workspace_symbols, desc = 'List Workspace Symbols' },
    { '<leader>lt', require('telescope.builtin').treesitter, desc = 'List Treesitter Symbols' },

    -- Open
    { '<leader>of', require('telescope.builtin').find_files, desc = 'Open Project Files' },
    { '<leader>og', require('telescope.builtin').git_files, desc = 'Open Versioned Files' },
    { '<leader>oh', require('telescope.builtin').help_tags, desc = 'Open Help Docs' },
    { '<leader>or', require('telescope.builtin').oldfiles, desc = 'Open Recent Files' },
    { '<leader>ot', function() require('telescope.builtin').find_files({ prompt_title = 'Test Files', search_dirs = { 'specs', 'tests' } }) end, desc = 'Open Test Files' },

    -- Search
    { '<leader>/', require('telescope.builtin').current_buffer_fuzzy_find, desc = 'Fuzzy Search Buffer' },
    { '<leader>?', require('telescope.builtin').live_grep, desc = 'Search Project Files' },

    -- Select Pickers
    { '<leader>sb', require('telescope.builtin').buffers, desc = 'Select Buffers' },
    { '<leader>sc', require('telescope.builtin').colorscheme, desc = 'Select Colorscheme' },
  }
}
