-- Automatically install packer for plugin management 
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

-- Run PackerCompile whenever this file is updated 
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile 
  augroup end
]])

-- Just in case we messed up. Try calling packer before we use it.
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  vim.notify('Something went wrong with installing packer.')
  return
end

-- Install plugins
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Which came first? The chicken or the egg?
end)
