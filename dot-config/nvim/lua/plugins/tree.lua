local map = require('core.utils').map

vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' }
})

require('nvim-tree').setup {
  renderer = {
    indent_markers = {
      enable = true
    }
  }
}

map('<leader>e', function()
  require('nvim-tree.api').tree.toggle()
end, { desc = 'Toggle File Explorer' })
