require('which-key').register({
  ['<leader>'] = { function() require('which-key').show_command() end, "All Commands" },
  ["/"] = { function() require('telescope.builtin').current_buffer_fuzzy_find() end, "Enhanced Search" }
},
{
  prefix = '<leader>'
})
