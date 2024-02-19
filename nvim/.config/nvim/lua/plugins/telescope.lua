return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      defaults = {
        file_ignore_patterns = { 'node_modules' },
        layout_config = {
          prompt_position = 'top'
        },
        sorting_strategy = 'ascending'
      }
    }
  },

  -- Extensions
  {
    'LinArcX/telescope-env.nvim',
    config = function()
      require('telescope').load_extension('env')

      vim.keymap.set(
        'n',
        '<leader>le',
        function() require('telescope').extensions.env.env() end,
        { desc = 'List Environmental Variables' }
      )
    end
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')

      vim.keymap.set(
        'n',
        '<leader>fb',
        function() require('telescope').extensions.file_browser.file_browser() end,
        { desc = 'File Browser' }
      )
    end
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    config = function()
      require('telescope').load_extension('fzf')
    end
  },
  {
    'debugloop/telescope-undo.nvim',
    main = 'telescope',
    config = function()
      require('telescope').load_extension('undo')

      vim.keymap.set(
        'n',
        '<leader>u',
        function() require('telescope').extensions.undo.undo() end,
        { desc = 'Undo' }
      )
    end
  }
}
