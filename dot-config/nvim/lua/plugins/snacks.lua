vim.pack.add({ 'https://github.com/folke/snacks.nvim' })

require('snacks').setup {
  bigfile = { enabled = true },
  explorer = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
}

-- Keymaps (Pickers)
local map = require('core.utils').map
local snacks = require('snacks')

map('<leader><leader>', function() snacks.picker.keymaps() end, { desc = 'Keymaps'})
map('<leader>fe', function() snacks.picker.explorer() end, { desc = 'File Explorer' })
map('<leader>ff', function() snacks.picker.smart() end, { desc = 'Find Files' })
map('<leader>gp', function() snacks.picker.gh_pr() end, { desc = 'Select PR'})
map('<leader>sb', function() snacks.picker.buffers() end, { desc = 'Select Buffer' })
map('<leader>sd', function() snacks.picker.diagnostics_buffer() end, { desc = 'Search Diagnostics' })
map('<leader>sD', function() snacks.picker.diagnostics() end, { desc = 'Select All Diagnostics' })
map('<leader>sf', function() snacks.picker.grep_buffers() end, { desc = 'Search Files' })
map('<leader>sF', function() snacks.picker.grep() end, { desc = 'Search All Files' })
map('<leader>p',  function() snacks.picker.command_history() end, { desc = 'Select Command'})
map('<leader>P',  function() snacks.picker.commands() end, { desc = 'Select Any Command'})

-- Keymaps
map('<leader>gb', function() snacks.gitbrowse() end, { desc = 'View on Github'})
map('<leader>gg', function() snacks.lazygit() end, { desc = 'Lazygit'})
