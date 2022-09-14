
require('which-key').register({
  f = {
    name = "Find/Grep",
    b = { function() require('telescope.builtin').live_grep({ grep_open_files = true }) end, "In Buffers" },
    p = { function() require('telescope.builtin').live_grep() end, "In Project" },
    t = { function() require('telescope.builtin').live_grep() end, "In Tests" },
  }
},
{
  prefix = '<leader>'
})
