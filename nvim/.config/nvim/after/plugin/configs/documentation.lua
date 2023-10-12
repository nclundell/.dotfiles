local map = require('utils.keymap')

require('nvim-devdocs').setup {
  wrap = true,
  previewer_cmd = 'mdless',
  -- previewer_cmd = 'glow',
  -- picker_cmd_args = { "-s", "dark", "-w", "45" },
  after_open = function(bufnr) vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Esc>', ':close<CR>', {}) end,
  ensure_installed = {
    'css',
    'html'
  }
}

-- Mappings
map('n', '<leader>sd', '<cmd> :DevdocsOpenFloat <CR>', { desc = 'Search Devdocs' })
