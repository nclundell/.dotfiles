return function ()
  require('telescope').setup{
    defaults = {
      file_ignore_patterns = { "node_modules" },
      layout_config = {
        prompt_position = 'top'
      },
      sorting_strategy = 'ascending'
    },
    extensions = {
      packer = {},
      tele_tabby = {}
    }
  }

  -- Load Extensions
  require('telescope').load_extension('fzy_native')
end
-- border          = true,
-- height          = 20,
-- previewer       = false,
-- shorten_path    = false,
-- use_highlighter = true,
-- width           = 60,
-- winblend        = 10,
