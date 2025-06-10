local map = vim.keymap.set

-- Essentials
map('n', '<C-[>', '<cmd>noh<CR>')
map('n', ';', ':')
-- map('n', '\\', '<cmd>NvimTreeToggle<CR><cmd>NvimTreeRefresh<CR>', { desc = 'toggle nvim tree' })

-- j/k to move in wrapped lines
map('n', 'j', 'gj', { noremap = true, silent = true })
map('n', 'k', 'gk', { noremap = true, silent = true })

-- Windows & buffers
map('n', '<M-a>', '<C-W>H')
map('n', '<M-s>', '<C-W>J')
map('n', '<M-w>', '<C-W>K')
map('n', '<M-d>', '<C-W>L')
map('n', '<M-z>', '<C-w>q')
map('n', '<leader>x', '<cmd>so<CR>')
map('t', '<C-[>', '<C-\\><C-N>', { desc = 'terminal escape terminal mode' })
map({ 'n', 'i' }, '<A-.>', function()
    require('nvchad.tabufline').next()
end, { desc = 'buffer goto next' })
map({ 'n', 'i' }, '<A-,>', function()
    require('nvchad.tabufline').prev()
end, { desc = 'buffer goto prev' })
map('n', '<A-i>', function()
    require('nvchad.tabufline').move_buf(-1)
end, { desc = 'buffer goto next' })
map('n', '<A-o>', function()
    require('nvchad.tabufline').move_buf(1)
end, { desc = 'buffer goto next' })
map('n', '<leader>q', function() -- close buffer
    require('nvchad.tabufline').close_buffer()
end, { desc = 'buffer close' })

-- Telescope
local builtin = require 'telescope.builtin'
map('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
map('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
map('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

map('n', '<leader>f', function()
    require('conform').format { lsp_fallback = true }
end, { desc = 'general format file' })

-- Slightly advanced example of overriding default behavior and theme
map('n', '<leader>/', function()
    -- You can pass additional configuration to Telescope to change the theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

map('n', '<leader>s/', function()
    builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
    }
end, { desc = '[S]earch [/] in Open Files' })

map('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

map('n', '<leader>st', function()
    require('nvchad.themes').open()
end)

-- ToggleTerm

-- obsidian
vim.keymap.set('n', '<leader>so', function()
    local client = require('obsidian').get_client()
    local vault_path = tostring(client:vault_root())

    require('telescope.builtin').find_files {
        prompt_title = 'Search Obsidian Vault',
        search_dirs = { vault_path },
    }
end, { desc = 'Search current Obsidian vault' })
