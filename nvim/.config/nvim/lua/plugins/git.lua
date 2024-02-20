return {
  'lewis6991/gitsigns.nvim',
  opts = {},
  config = function()
    local gs = require('gitsigns')

    require('which-key').register({
      g = {
        name = 'Git',
        b = { function() gs.blame_line({ full = true }) end, 'Blame' },
        c = { function() gs.commit() end, 'Commit' },
        p = { function() gs.preview_hunk() end, 'Preview Hunk' },
        r = { function() gs.reset_hunk() end, 'Reset Hunk' },
        R = { function() gs.reset_buffer() end, 'Reset Buffer' },
        s = { function() gs.stage_hunk() end, 'Stage Hunk' },
        u = { function() gs.undo_stage_hunk() end, 'Undo Stage Hunk' }
      },
      t = {
        name = 'Toggle',
        b = { function() gs.toggle_current_line_blame() end, 'Toggle Blame' },
      }
    }, { prefix = '<leader>' })
  end
}
