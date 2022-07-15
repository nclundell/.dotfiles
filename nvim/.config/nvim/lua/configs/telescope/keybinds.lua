local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

require('which-key').register({
  g = {
    name = "Grep",
    p = { function() require('telescope.builtin').live_grep() end, "Project" },
    s = { function() require('telescope.builtin').grep_string() end, "String Under Cursor" },
  },
  l = {
    name = "List",
    d = { function() require('telescope.builtin').lsp_definitions() end, "LSP Definitions" },
    e = { function() require('telescope').extensions.env.env() end, "Environment Variables" },
    r = { function() require('telescope.builtin').lsp_references() end, "LSP References" },
    s = { function() require('telescope.builtin').lsp_document_symbols() end, "LSP Symbols" },
    t = { function() require('telescope.builtin').treesitter() end, "Treesitter Objects" }
  },
  o = {
    name = 'Open',
    f = { function() require('telescope.builtin').find_files() end, "File" },
    g = { function() require('telescope.builtin').git_files() end, "Versioned (Git) File" }
  },
  s = {
    name = 'Select',
    b = { function() require('telescope.builtin').buffers(selection_layout) end, "Buffer" },
    c = { function() require('telescope.builtin').colorscheme(selection_layout) end, "Colorscheme" },
    p = { function() require('telescope').extensions.project.project(selection_layout) end, "Project" },
  },
  ["/"] = { function() require('telescope.builtin').current_buffer_fuzzy_find() end, "Enhanced Search" },
},
{
  prefix = '<leader>'
})
