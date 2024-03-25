return {
  'debugloop/telescope-undo.nvim',
  main = 'telescope',
  config = function()
    require('telescope').load_extension('undo')

    require('which-key').register({
      u = { function() require('telescope').extensions.undo.undo() end, 'Undo' }
    },
    {
      prefix = '<leader>'
    })
  end
}
