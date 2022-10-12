local tb = require('telescope.builtin')
local map = require('utils.keymap')

map(
  'n',
  '<leader>lc',
  function() tb.git_commits() end,
  { 
    desc = 'List Commits'
  }
)

map(
  'n',
  '<leader>ld',
  function() tb.lsp_definitions() end,
  { 
    desc = 'List LSP Definitions'
  }
)

map(
  'n',
  '<leader>le',
  function() require('telescope').extensions.env.env() end,
  { 
    desc = 'List Environmental Variables'
  }
)

map(
  'n',
  '<leader>lr',
  function() tb.lsp_references() end,
  { 
    desc = 'List LSP References'
  }
)

map(
  'n',
  '<leader>ls',
  function() tb.lsp_document_symbols() end,
  { 
    desc = 'List LSP Symbols'
  }
)

map(
  'n',
  '<leader>lt',
  function() tb.treesitter() end,
  { 
    desc = 'List Treesitter Objects'
  }
)
