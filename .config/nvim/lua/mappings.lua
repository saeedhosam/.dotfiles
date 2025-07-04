local map = vim.keymap.set

-- Essentials
map('v', '<leader>p', [["_dP]], { noremap = true, silent = true })
map('n', '<C-[>', '<cmd>noh<CR>')

map('n', ';', ':')
map('n', ':', '')

map('n', '{', '}') -- idk why these were different than jk, at least I don't know 'yet'
map('n', '}', '{')

map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true, silent = true })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true, silent = true })

map('n', '<leader>x', '<cmd>so<CR>', { desc = 'Run file' })

-- Windows & buffers
map('n', '<M-a>', '<C-W>H')
map('n', '<M-s>', '<C-W>J')
map('n', '<M-w>', '<C-W>K')
map('n', '<M-d>', '<C-W>L')

map('n', '<C-h>', '<C-W>h')
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-l>', '<C-W>l')

map('n', '<leader>w', '<cmd>close<CR>', { desc = 'Close window' })
map('n', '<leader>o', '<cmd>only<CR>', { desc = 'Close all windows except current' })

map({ 'n', 'i' }, '<A-.>', '<cmd>BufferLineCycleNext<CR>', { desc = 'buffer go to next' })
map({ 'n', 'i' }, '<A-,>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'buffer go to previous' })
map({ 'n', 'i' }, '<A-o>', '<cmd>BufferLineMoveNext<CR>', { desc = 'buffer move to next' })
map({ 'n', 'i' }, '<A-i>', '<cmd>BufferLineMovePrev<CR>', { desc = 'buffer move to previous' })

-- Misc
map('n', '<leader>f', function()
    require('conform').format { lsp_fallback = true }
end, { desc = 'Format file' })
map('n', '<leader>st', function()
    require('nvchad.themes').open()
end)
map('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Open Lazy' })
map('n', '<leader>q', '<cmd>bdelete<CR>', { desc = 'buffer close' })
map('t', '<C-[>', '<C-\\><C-N>', { desc = 'terminal escape terminal mode' })

-- FzfLua
local fzf = require 'fzf-lua'
map('n', '<leader>sh', fzf.helptags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eymaps' })
map('n', '<leader>sj', fzf.jumps, { desc = '[S]earch Recent Jumplists' })
map('n', '<leader>sb', fzf.buffers, { desc = '[S]earch Recent Jumplists' })
map('n', '<leader>sg', fzf.git_files, { desc = '[S]earch Git Files' })
map('n', '<leader>sa', fzf.live_grep, { desc = '[S]earch Grep' })
map('n', '<leader>sn', function()
    fzf.files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
