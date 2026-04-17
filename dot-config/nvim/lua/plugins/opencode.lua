vim.pack.add({ "https://github.com/nickjvandyke/opencode.nvim" }, { version = "*" })

-- Automatically go to insert mode when entering an Opencode buffer
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("OpencodeEnter", { clear = true }),
  callback = function(args)
    if vim.bo[args.buf].buftype ~= "terminal" then
      return
    end
    local name = vim.api.nvim_buf_get_name(args.buf)
    if not name:find("opencode", 1, true) then
      return
    end
    vim.schedule(function()
      if vim.api.nvim_buf_is_valid(args.buf) and vim.api.nvim_get_current_buf() == args.buf then
        vim.cmd("startinsert")
      end
    end)
  end,
})

-- Keybinds
vim.keymap.set({ "n", "x" }, "<C-a>", function()
  require("opencode").ask("@this: ", { submit = true })
end, { desc = "Ask opencode" })

vim.keymap.set({ "n", "x" }, "<C-x>", function()
  require("opencode").select()
end, { desc = "Opencode actions" })

vim.keymap.set({ "n", "t" }, "<leader>gc", function()
  require("opencode").toggle()
end, { desc = "Toggle opencode" })

vim.keymap.set({ "n", "x" }, "go", function()
  return require("opencode").operator("@this ")
end, { desc = "Add range to opencode", expr = true })

vim.keymap.set("n", "goo", function()
  return require("opencode").operator("@this ") .. "_"
end, { desc = "Add line to opencode", expr = true })

vim.keymap.set("n", "<S-C-u>", function()
  require("opencode").command("session.half.page.up")
end, { desc = "Scroll opencode up" })

vim.keymap.set("n", "<S-C-d>", function()
  require("opencode").command("session.half.page.down")
end, { desc = "Scroll opencode down" })
