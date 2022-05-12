return function ()
  require("sidebar-nvim").setup({
    sections = { "git", "diagnostics", "files" },
  })
end
