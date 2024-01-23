return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim'
    },
    opts = {
      defaults = {
        file_ignore_patterns = { 'node_modules' },
        layout_config = {
          prompt_position = 'top'
        },
        sorting_strategy = 'ascending'
      },
      extensions = {
        undo = {}
      }
    }
  },

  -- Extensions
  {
    'nvim-telescope/telescope-file-browser.nvim',
    'debugloop/telescope-undo.nvim',
    'LinArcX/telescope-env.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  }
}
