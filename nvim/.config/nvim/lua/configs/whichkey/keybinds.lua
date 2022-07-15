require('which-key').register({
  ['<leader>'] = { function() require('which-key').show_command() end, "All Commands" }
},
{
  prefix = '<leader>'
})
