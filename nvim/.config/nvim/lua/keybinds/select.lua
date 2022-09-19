local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

require('which-key').register({
  s = {
    name = 'Select',
    b = { function() require('telescope.builtin').buffers(selection_layout) end, "Buffer" },
    c = { function() require('telescope.builtin').colorscheme(selection_layout) end, "Colorscheme" },
    f = { function() require('telescope').extensions.file_browser.file_browser(selection_layout) end, "Files" },
    m = { function() require('telescope.builtin').marks() end, "Mark"},
    q = { function() require('telescope.builtin').quickfix() end, "Quickfix Item" },
    r = { function() require('telescope.builtin').registers(selection_layout) end, "Register"}
  }
},
{
  prefix = '<leader>'
})
