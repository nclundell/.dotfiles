require('which-key').register({
  f = {
    name = "Find/Grep",
    b = { function() require('telescope.builtin').live_grep({ grep_open_files = true }) end, "Buffers" },
    p = { function() require('telescope.builtin').live_grep() end, "Project" },
    t = { function() require('telescope.builtin').live_grep({ search_dirs = { "specs" } }) end, "Tests" },
  }
},
{
  prefix = '<leader>'
})
