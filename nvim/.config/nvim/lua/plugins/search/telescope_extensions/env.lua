return {
  'LinArcX/telescope-env.nvim',
  config = function()
    require('telescope').load_extension('env')

    require('which-key').register({
      le = { function() require('telescope').extensions.env.env() end, 'List Environmental Variables' }
    },
    {
      prefix = '<leader>'
    })
  end
}
