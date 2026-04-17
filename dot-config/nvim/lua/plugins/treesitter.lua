vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

local pending = {}
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('TreesitterManagement', { clear = true }),
  callback = function(args)
    -- Check for valid buffer
    local bufnr = args.buf
    if not vim.api.nvim_buf_is_valid(bufnr) then return end

    -- Check for filetype on buffer
    local filetype = vim.bo[bufnr].filetype
    if filetype == '' then return end

    -- Check nvim-treesitter for filetype/language
    local treesitter = require('nvim-treesitter')
    local language = vim.treesitter.language.get_lang(filetype) or filetype
    if not vim.tbl_contains(treesitter.get_available(), language) then return end

    -- If already installed, start treesitter now
    -- Else install and start treesitter
    if vim.tbl_contains(treesitter.get_installed(), language) then
      pcall(vim.treesitter.start, bufnr)
    else
      -- Queue if install is currently pending
      if pending[language] then
        table.insert(pending[language], bufnr)
        return
      else
        pending[language] = { bufnr }
      end

      -- Install parser and return error or
      -- start treesitter for all valid queued buffers
      treesitter.install(language, {}, function(_, err)
        local buffers = pending[language] or {}
        pending[language] = nil

        if err then
          vim.schedule(function()
            vim.notify(
              string.format('tree-sitter install failed for %s (%s): %s', filetype, language, err),
              vim.log.levels.ERROR
            )
          end)
          return
        end

        for _, buffer in ipairs(buffers) do
          if vim.api.nvim_buf_is_valid(buffer) then pcall(vim.treesitter.start, buffer) end
        end
      end)
    end
  end
})
