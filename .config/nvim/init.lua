vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'config.lazy'

vim.cmd [[colorscheme tokyonight]]

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
