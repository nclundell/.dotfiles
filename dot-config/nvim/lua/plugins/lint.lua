return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      bash = { 'shellcheck' },
      css = { 'stylelint' },
      html = { 'htmlhint' },
      javascript = { 'eslint' },
      json = { 'jsonlint' },
      lua = { 'luacheck' },
      markdown = { 'markdownlint' },
      python = { 'flake8' },
      ruby = { 'rubocop' },
      typescript = { 'eslint' }
    }
  end
}
