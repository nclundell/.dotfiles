vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    local ft = vim.bo.filetype
    if require('nvim-treesitter.parsers')[ft] then
      require('nvim-treesitter').install(ft, {}, function()
        vim.treesitter.start()
      end)
    end
  end
})

return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'RRethy/nvim-treesitter-endwise'
  },
  lazy = false,
  branch = 'main',
  build = ':TSUpdate'
}
