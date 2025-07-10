return {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  config = true,
  cmd = {
    'Gitsigns'
  },
  keys = {
    { '<leader>gb', function() require('gitsigns').blame_line({ full = true }) end, desc = 'Show Line Blame' },
    { '<leader>gB', function() require('gitsigns').toggle_current_line_blame() end, desc = 'Toggle Line Blame' },
    -- { '<leader>gd', function() require('gitsigns').diffthis() end, desc = 'Show Git Diff' },
    -- { '<leader>gp', function() require('gitsigns').preview_hunk() end, desc = 'Preview Hunk' },
    -- { '<leader>gr', function() require('gitsigns').reset_hunk() end, desc = 'Reset Hunk' },
    -- { '<leader>gR', function() require('gitsigns').reset_buffer() end, desc = 'Reset Buffer' },
    -- { '<leader>gs', function() require('gitsigns').stage_hunk() end, desc = 'Stage Hunk' },
    -- { '<leader>gS', function() require('gitsigns').undo_stage_hunk() end, desc = 'Unstage Hunk' }
  }
}
