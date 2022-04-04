local Utils = {}

function Utils.bootstrap_plugins()
  local bootstrapped = false
  local github_path  = 'https://github.com/wbthomason/packer.nvim'
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    bootstrapped = true
    vim.fn.system({
      'git',
      'clone',
      '--depth=1',
      github_path,
      install_path
    })
    vim.cmd [[ packadd packer.nvim ]]
  end

    -- Check For Packer
  local loaded, packer = pcall(require, "packer")
  if not loaded then return end

  packer.init({
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end
    }
  })

  packer.startup(require('plugins'))

  if bootstrapped then packer.sync() end
end

function Utils.map(mode, binding, command, opts)
  opts = vim.tbl_extend('keep', opts or {}, {
    noremap = true,
    silent = true,
    expr = false
  })

  vim.api.nvim_set_keymap(mode, binding, command, opts)
end

return Utils
