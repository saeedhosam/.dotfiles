-- Leader key mappings (has to be before requiring lazy)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Base46
vim.g.base46_cache = vim.fn.stdpath 'data' .. '/base46_cache/'
vim.g.theme = 'chadracula-evondev'

-- Lazy plugins manager
require 'options'
require 'config.lazy'
require 'mappings'
require 'autocmds'

-- Base46
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')
require('base46').load_all_highlights()
