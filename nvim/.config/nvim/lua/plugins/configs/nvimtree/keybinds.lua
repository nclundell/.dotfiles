require('which-key').register({
  t = {
    name = "Toggle",
    f = { function() require('nvim-tree').toggle() end, "File Tree" }
  }
},
{
  prefix = '<leader>'
})
