require('which-key').register({
  o = {
    name = 'Open',
    f = { function() require('telescope.builtin').find_files({ prompt_title = "Files" }) end, "File" },
    g = { function() require('telescope.builtin').git_files() end, "Git Files" },
    h = { function() require('telescope.builtin').help_tags() end, "Help Pages"},
    m = { function() require('telescope.builtin').man_pages() end, "Man Pages"},
    r = { function() require('telescope.builtin').oldfiles({ prompt_title = "Recent Files" }) end, "Recent" },
    t = { function() require('telescope.builtin').find_files({ prompt_title = "Tests", search_dirs = { "specs" } }) end, "Test" }
  }
},
{
  prefix = '<leader>'
})
