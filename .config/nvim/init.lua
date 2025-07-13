-- Leader key mappings (has to be before requiring lazy)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Lazy plugins manager
require 'options'
require 'config.lazy'
require 'mappings'
require 'autocmds'

-- theme & transparency
vim.cmd.colorscheme 'tokyonight'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
