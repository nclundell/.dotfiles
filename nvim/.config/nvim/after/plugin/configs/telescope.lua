local telescope = require('telescope')
local tb = require('telescope.builtin')

telescope.setup {
  defaults = {
    file_ignore_patterns = { 'node_modules' },
    layout_config = {
      prompt_position = 'top'
    },
    sorting_strategy = 'ascending'
  },
  extensions = {
    undo = {}
  }
}

-- Load Extensions
telescope.load_extension('env')
telescope.load_extension('fzf')
telescope.load_extension('undo')
telescope.load_extension('file_browser')

-- Keymaps
local map = require('utils.keymap')
local selection_layout = require('telescope.themes').get_dropdown({ previewer = false })

map('n', '<leader>/',  function() tb.current_buffer_fuzzy_find() end, { desc = 'Enhanced Search' })
map('n', '<leader>fb', function() telescope.extensions.file_browser.file_browser() end, { desc = 'File Browser' })
map('n', '<leader>lc', function() tb.git_commits() end, { desc = 'List Commits' })
map('n', '<leader>ld', function() tb.lsp_definitions() end, { desc = 'List LSP Definitions' })
map('n', '<leader>le', function() telescope.extensions.env.env() end, { desc = 'List Environmental Variables' })
map('n', '<leader>lr', function() tb.lsp_references() end, { desc = 'List LSP References' })
map('n', '<leader>ls', function() tb.lsp_document_symbols() end, { desc = 'List LSP Symbols' })
map('n', '<leader>lt', function() tb.treesitter() end, { desc = 'List Treesitter Objects' })
map('n', '<leader>of', function() tb.find_files({ prompt_title = 'Files' }) end, { desc = 'Open Files' })
map('n', '<leader>og', function() tb.git_files() end, { desc = 'Open Git Files' })
map('n', '<leader>oh', function() tb.help_tags() end, { desc = 'Open Help Pages' })
map('n', '<leader>or', function() tb.oldfiles({ prompt_title = "Recent Files" }) end, { desc = 'Open Recent Files' })
map('n', '<leader>sb', function() tb.buffers(selection_layout) end, { desc = 'Select Buffers' })
map('n', '<leader>sc', function() tb.colorscheme(selection_layout) end, { desc = 'Select Colorscheme' })
map('n', '<leader>sf', function() tb.live_grep() end, { desc = 'Search All Files' })
map('n', '<leader>so', function() tb.live_grep({ grep_open_files = true }) end, { desc = 'Search Open Files (Buffers)' })
map('n', '<leader>st', function() tb.live_grep({ search_dirs = { 'spec' } }) end, { desc = 'Search Tests' })
map('n', '<leader>u', function() telescope.extensions.undo.undo() end, { desc = 'Undo' })
map('n', '<leader><leader>', function() tb.keymaps(selection_layout) end, { desc = 'Defined Keymaps' })
map('n', '<leader><localleader>', function() tb.commands(selection_layout) end, { desc = 'Available Commands' })
