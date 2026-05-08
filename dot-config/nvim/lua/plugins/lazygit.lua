vim.pack.add({
  { src = "https://github.com/kdheepak/lazygit.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
})

vim.keymap.set("n", "<leader>gg", function()
  require("lazygit").lazygit()
end, { desc = "Toggle LazyGit" })
