return function ()
  require('telescope').setup{
    defaults = {
      file_ignore_patterns = { "node_modules" },
      layout_config = {
        prompt_position = 'top'
      },
      sorting_strategy = 'ascending'
    },
  }
end
