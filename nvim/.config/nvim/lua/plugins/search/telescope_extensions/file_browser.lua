return {
  'nvim-telescope/telescope-file-browser.nvim',
  config = function()
    require('telescope').load_extension('file_browser')

    local select_layout = require('telescope.themes').get_dropdown({ previewer = false })

    require('which-key').register({
      f = { function() require('telescope').extensions.file_browser.file_browser(select_layout) end, 'File Browser' }
    },
    {
      prefix = '<leader>'
    })
  end
}
