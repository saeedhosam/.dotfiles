-- sudo pacman -Syu zathura prettier

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

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
