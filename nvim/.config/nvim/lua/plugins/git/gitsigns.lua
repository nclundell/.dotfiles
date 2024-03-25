return {
  'lewis6991/gitsigns.nvim',
  opts = {},
  init = function()
    local gs = require('gitsigns')
    local map = vim.keymap.set

    -- Blame
    map('n', '<leader>gb', function() gs.blame_line({ full = true }) end, { noremap = true })
    map('n', '<leader>gB', function() gs.toggle_current_line_blame() end, { noremap = true })

    -- Hunks
    map('n', ']h', function() gs.next_hunk() end, { noremap = true })
    map('n', '[h', function() gs.prev_hunk() end, { noremap = true })
    map('n', '<leader>gp', function() gs.preview_hunk() end, { noremap = true })
    map('n', '<leader>gr', function() gs.reset_hunk() end, { noremap = true })
    map('n', '<leader>gR', function() gs.reset_buffer() end, { noremap = true })
    map('n', '<leader>gs', function() gs.stage_hunk() end, { noremap = true })
    map('n', '<leader>gS', function() gs.undo_stage_hunk() end, { noremap = true })
  end
}
