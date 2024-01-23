  -- Navigate Windows
  vim.keymap.set("n", "<C-h>", "<C-w>h")
  vim.keymap.set("n", "<C-j>", "<C-w>j")
  vim.keymap.set("n", "<C-k>", "<C-w>k")
  vim.keymap.set("n", "<C-l>", "<C-w>l")

  -- Turn Off Search Highlight
  vim.keymap.set("n", "<ESC>", "<CMD> nohl <CR>")

  -- (Un)Fold With Spacebar
  vim.keymap.set("n", "<Space>", "@=(foldlevel('.')?'za': '<Space>') <CR>")

  -- Visual Mode Indenting
  vim.keymap.set("x", ">", ">gv")
  vim.keymap.set("x", "<", "<gv")
