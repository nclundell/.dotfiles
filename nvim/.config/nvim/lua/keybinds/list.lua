require('which-key').register({
  l = {
    name = "List",
    b = { function() require('telescope.builtin').git_bcommits() end, "Buffer Commits" },
    c = { function() require('telescope.builtin').git_commits() end, "Commits" },
    d = { function() require('telescope.builtin').lsp_definitions() end, "LSP Definitions" },
    e = { function() require('telescope').extensions.env.env() end, "Environment Variables" },
    r = { function() require('telescope.builtin').lsp_references() end, "LSP References" },
    s = { function() require('telescope.builtin').lsp_document_symbols() end, "LSP Symbols" },
    t = { function() require('telescope.builtin').treesitter() end, "Treesitter Objects" }
  }
},
{
  prefix = '<leader>'
})
