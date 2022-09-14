require('which-key').register({
  o = {
    name = 'Open',
    f = { function() require('telescope.builtin').find_files({ prompt_title = "File" }) end, "File" },
    g = { function() require('telescope.builtin').git_files() end, "Git File" },
    h = { function() require('telescope.builtin').help_tags() end, "Help"},
    m = { function() require('telescope.builtin').man_pages() end, "Man Pages"},
    r = { function() require('telescope.builtin').oldfiles({ prompt_title = "Recent File" }) end, "Recent" },
    t = { function() require('telescope.builtin').find_files({ prompt_title = "Test" }) end, "Test" }
  }
},
{
  prefix = '<leader>'
})
