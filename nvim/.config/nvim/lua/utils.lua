local Utils = {}

function Utils.map(mode, binding, command, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
    noremap = true,
    silent = true,
    expr = false
  })

  vim.api.nvim_set_keymap(mode, binding, command, opts)
end

function Utils.packer_bootstrap()
  local initial_install = false
  local github_path  = 'https://github.com/wbthomason/packer.nvim'
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    initial_install = true
    vim.fn.system({'git', 'clone', github_path, install_path})
  end

  vim.cmd [[ packadd packer.nvim ]]
  vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]
  require('plugins')

  return initial_install
end

return Utils
