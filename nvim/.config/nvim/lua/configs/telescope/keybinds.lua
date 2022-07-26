local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

require('which-key').register({
  f = {
    name = "Find",
    f = { function() require('telescope.builtin').find_files() end, "Files" },
    g = { function() require('telescope.builtin').git_files() end, "Versioned File" },
    l = { function() require('telescope.builtin').live_grep() end, "Live Grep" },
    ["<space>"] = { function() require('telescope.builtin').grep_string() end, "Grep Current" }
  },
  g = {
    name = "Git",
    b = { function() require('telescope.builtin').git_bcommits() end, "Buffer Commits" },
    c = { function() require('telescope.builtin').git_commits() end, "Commits" },
    f = { function() require('telescope.builtin').git_files() end, "Files" }
  },
  l = {
    name = "List",
    b = { function() require('telescope.builtin').git_bcommits() end, "Buffer Commits" },
    c = { function() require('telescope.builtin').git_commits() end, "Commits" },
    d = { function() require('telescope.builtin').lsp_definitions() end, "LSP Definitions" },
    e = { function() require('telescope').extensions.env.env() end, "Environment Variables" },
    p = { function() require('telescope').extensions.packer.packer(selection_layout) end, "Plugins" },
    r = { function() require('telescope.builtin').lsp_references() end, "LSP References" },
    s = { function() require('telescope.builtin').lsp_document_symbols() end, "LSP Symbols" },
    t = { function() require('telescope.builtin').treesitter() end, "Treesitter Objects" }
  },
  o = {
    name = 'Open',
    f = { function() require('telescope.builtin').find_files() end, "File" },
    g = { function() require('telescope.builtin').git_files() end, "Versioned (Git) File" },
    h = { function() require('telescope.builtin').help_tags() end, "Help"},
    m = { function() require('telescope.builtin').man_pages() end, "Man Pages"},
    r = { function() require('telescope.builtin').oldfiles({ prompt_title = "Recent Files" }) end, "Recent Files" }
  },
  s = {
    name = 'Select',
    b = { function() require('telescope.builtin').buffers(selection_layout) end, "Buffer" },
    c = { function() require('telescope.builtin').colorscheme(selection_layout) end, "Colorscheme" },
    m = { function() require('telescope.builtin').marks() end, "Mark"},
    p = { function() require('telescope').extensions.project.project(selection_layout) end, "Project" },
    q = { function() require('telescope.builtin').quickfix() end, "Quickfix Item" },
    r = { function() require('telescope.builtin').registers() end, "Register"}
  },
  ["/"] = { function() require('telescope.builtin').current_buffer_fuzzy_find() end, "Enhanced Search" }
},
{
  prefix = '<leader>'
})
