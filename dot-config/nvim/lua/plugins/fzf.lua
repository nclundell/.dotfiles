return {
  "ibhagwan/fzf-lua",
  opts = {
    fzf_colors = true,
    buffers = {
      previewer = false
    },
    commands = {
      previewer = false
    },
    keymaps = {
      previewer = false
    },
    oldfiles = {
      cwd_only = true,
      winopts = {
        title = "Recent Files"
      }
    }
  },
  keys = {
    { "<leader><leader>", "<cmd>FzfLua<cr>", desc = "FzfLua" },
    { "<leader>/", "<cmd>FzfLua lines<cr>", desc = "Buffer line search"},
    { "<leader>:", "<cmd>FzfLua commands<cr>", desc = "Commands" },
    { "<leader>;", "<cmd>FzfLua command_history<cr>", desc = "Command History" },

    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
    { "<leader>fc", "<cmd>FzfLua colorschemes<cr>", desc = "Colorschemes" },
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Live grep current buffer" },
    { "<leader>fG", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
    { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help tags" },
    { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps" },
    { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent files" },
    { "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document symbols" },
    { "<leader>fS", "<cmd>FzfLua lsp_workspace_symbols<cr>", desc = "Workspace symbols" },
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
    { "<leader>fw", "<cmd>FzfLua grep_visual<cr>", desc = "Grep visual selection", mode = "x" },

    { "<leader>gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Goto Definition" },
    { "<leader>gD", "<cmd>FzfLua lsp_declarations<cr>", desc = "Goto Declaration" },
    { "<leader>gr", "<cmd>FzfLua lsp_references<cr>", desc = "References" },
    { "<leader>gI", "<cmd>FzfLua lsp_implementations<cr>", desc = "Goto Implementation" },
    { "<leader>gy", "<cmd>FzfLua lsp_typedefs<cr>", desc = "Goto T[y]pe Definition" },
  }
}
