local map = vim.keymap.set

-- Normal mode mappings
map('n', ';', ':', { desc = 'Enter command mode' })
map('n', ':', '', { desc = 'Remove default command mode' })
map('t', '<C-[>', '<C-\\><C-N>', { desc = 'Escape termainal mode' })
map('n', '<C-[>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })
map('n', '<leader>x', '<cmd>so<CR>', { desc = 'Source file' })
map('n', '{', '}') -- idk why these were different than jk, at least I don't know 'yet'
map('n', '}', '{')
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true, silent = true })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true, silent = true })

-- Open Lazy
map('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Open Lazy' })

-- Center screen when jumping
map('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' })
map('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Half page down (centered)' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Half page up (centered)' })

-- Delete without yanking
map({ 'n', 'v' }, '<leader>d', '"_d', { desc = 'Delete without yanking' })

-- Buffer navigation
map({ 'n', 'i' }, '<M-.>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
map({ 'n', 'i' }, '<M-,>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })

-- Buffer closure
map('n', '<leader>q', '<cmd>bdelete<CR>', { desc = 'buffer close' })

-- Window navigation
map('n', '<C-h>', '<C-W>h', { desc = 'Move to left window' })
map('n', '<C-j>', '<C-W>j', { desc = 'Move to bottom window' })
map('n', '<C-k>', '<C-W>k', { desc = 'Move to top window' })
map('n', '<C-l>', '<C-W>l', { desc = 'Move to right window' })

-- Window repositioning
map('n', '<M-a>', '<C-W>H')
map('n', '<M-s>', '<C-W>J')
map('n', '<M-w>', '<C-W>K')
map('n', '<M-d>', '<C-W>L')

-- Window closure and separation
map('n', '<leader>w', '<cmd>close<CR>', { desc = 'Close window' })
map('n', '<leader>o', '<cmd>only<CR>', { desc = 'Close all windows except current' })

-- Splitting & Resizing
map('n', '<leader>av', '<cmd>vsplit<CR>', { desc = 'Split window vertically' })
map('n', '<leader>ah', '<cmd>split<CR>', { desc = 'Split window horizontally' })
map('n', '<C-Up>', '<cmd>resize +2<CR>', { desc = 'Increase window height' })
map('n', '<C-Down>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })
map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })

-- Move lines up/down
map('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move line down' })
map('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move line up' })
map('v', '<M-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
map('v', '<M-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- Better indenting in visual mode
map('v', '<', '<gv', { desc = 'Indent left and reselect' })
map('v', '>', '>gv', { desc = 'Indent right and reselect' })

-- Better J behavior
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines and keep cursor position' })

-- FzfLua
local fzf = require 'fzf-lua'
map('n', '<M-/>', fzf.buffers, { desc = 'Search in buffers' })
map('n', '<leader>sh', fzf.helptags, { desc = 'Search in help pages' })
map('n', '<leader>sk', fzf.keymaps, { desc = 'Search in keymaps' })
map('n', '<leader>sj', fzf.jumps, { desc = 'Search in recent jumplists' })
map('n', '<leader>sg', fzf.git_files, { desc = 'Search in git' })
map('n', '<leader>sa', fzf.live_grep, { desc = 'Search with grep' })
map('n', '<leader>sn', function()
    fzf.files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Search in Neovim config files' })

-- Copy Full File-Path
vim.keymap.set('n', '<leader>pa', function()
    local path = vim.fn.expand '%:p'
    vim.fn.setreg('+', path)
    print('file:', path)
end)

-- Format file
map('n', '<leader>f', function()
    require('conform').format { lsp_fallback = true }
end, { desc = 'Format file' })
