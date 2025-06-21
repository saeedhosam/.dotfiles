local map = vim.keymap.set

-- Essentials
map('n', '<C-[>', '<cmd>noh<CR>')
map('n', '<C-c>', '<cmd>noh<CR>')
map('n', ';', ':')
map('n', ':', '')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', '{', '}') -- idk why these were different than jk, at least I don't know 'yet'
map('n', '}', '{')

vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true, silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true, silent = true })

-- Windows & buffers
map('n', '<M-a>', '<C-W>H')
map('n', '<M-s>', '<C-W>J')
map('n', '<M-w>', '<C-W>K')
map('n', '<M-d>', '<C-W>L')
map('n', '<M-z>', '<C-w>q')
map('n', '<leader>x', '<cmd>so<CR>', { desc = 'Run file' })
map('t', '<C-[>', '<C-\\><C-N>', { desc = 'terminal escape terminal mode' })
map('n', '<leader>w', '<cmd>close<CR>', { desc = 'Close window' })
map('n', '<leader>o', '<cmd>only<CR>', { desc = 'Close all windows except current' })
map('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Open Lazy' })
map({ 'n', 'i' }, '<A-.>', function()
    require('nvchad.tabufline').next()
end, { desc = 'buffer goto next' })
map({ 'n', 'i' }, '<A-,>', function()
    require('nvchad.tabufline').prev()
end, { desc = 'buffer goto prev' })
map({ 'n', 'i' }, '<A-i>', function()
    require('nvchad.tabufline').move_buf(-1)
end, { desc = 'buffer goto next' })
map({ 'n', 'i' }, '<A-o>', function()
    require('nvchad.tabufline').move_buf(1)
end, { desc = 'buffer goto next' })
map('n', '<leader>q', function() -- close buffer
    require('nvchad.tabufline').close_buffer()
end, { desc = 'Close buffer' })

-- Misc
map('n', '<leader>f', function()
    require('conform').format { lsp_fallback = true }
end, { desc = 'Format file' })
map('n', '<leader>st', function()
    require('nvchad.themes').open()
end)

-- FzfLua
local fzf = require 'fzf-lua'
map('n', '<leader>sh', fzf.helptags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eymaps' })
map('n', '<leader>sj', fzf.jumps, { desc = '[S]earch Recent Jumplists' })
map('n', '<leader>sb', fzf.buffers, { desc = '[S]earch Recent Jumplists' })
map('n', '<leader>sg', fzf.git_files, { desc = '[S]earch Git Files' })
map('n', '<leader>sn', function()
    fzf.files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
