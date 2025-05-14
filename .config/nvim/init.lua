vim.g.base46_cache = vim.fn.stdpath 'data' .. '/base46/'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'config.lazy'

dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')

vim.schedule(function()
    require 'mappings'
end)
