local map = vim.keymap.set
map('n', '<C-[>', '<cmd>noh<CR>')

-- nvim-tree
map('n', '\\', '<cmd>NvimTreeToggle<CR>', { desc = 'toggle nvim tree' })
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<M-y>', '<cmd>vsplit<CR>')
map('n', '<M-x>', '<cmd>split<CR>')
map('n', '<M-a>', '<C-W>H')
map('n', '<M-s>', '<C-W>J')
map('n', '<M-w>', '<C-W>K')
map('n', '<M-d>', '<C-W>L')

map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

map('n', ';', ':')

map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle Background Transparency" })

-- tabufline
map('n', '<M-o>', '<cmd>tabnext<CR>')
map('n', '<M-i>', '<cmd>tabprevious<CR>')

map('n', '<M-l>', function()
    require('nvchad.tabufline').next()
end, { desc = 'buffer goto next' })

map('n', '<M-h>', function()
    require('nvchad.tabufline').prev()
end, { desc = 'buffer goto prev' })

map('n', '<M-e>', '<C-w>q') -- close window
map('n', '<M-q>', function() -- close buffer
    require('nvchad.tabufline').close_buffer()
end, { desc = 'buffer close' })

-- resizing, remember them as making the window 'smaller' or 'larger'
map('n', '<M-,>', '<C-w>5<')
map('n', '<M-.>', '<C-w>5>')
map('n', "<M-'>", '<C-W>+')
map('n', '<M-/>', '<C-W>-')

map('n', '<leader>x', '<cmd>so<CR>')
map('n', '<leader>f', function()
    require('conform').format { lsp_fallback = true }
end, { desc = 'general format file' })

-- Telescope
local builtin = require 'telescope.builtin'

map('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })

map('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
map('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
map('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
map('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
map('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
map('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
map('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

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

-- terminal
map('t', '<C-[>', '<C-\\><C-N>', { desc = 'terminal escape terminal mode' })

-- toggleable
map({ 'n', 't' }, '<M-p>', function()
    require('nvchad.term').toggle { pos = 'vsp', id = 'vtoggleTerm' }
end, { desc = 'terminal toggleable vertical term' })

map({ 'n', 't' }, '<M-n>', function()
    require('nvchad.term').toggle { pos = 'sp', id = 'htoggleTerm' }
end, { desc = 'terminal toggleable horizontal term' })

map({ 'n', 't' }, '<M-i>', function()
    require('nvchad.term').toggle { pos = 'float', id = 'floatTerm' }
end, { desc = 'terminal toggle floating term' })


-- obsidian
vim.keymap.set("n", "<leader>so", function()
  local client = require("obsidian").get_client()
  local vault_path = tostring(client:vault_root())

  require("telescope.builtin").find_files({
    prompt_title = "Search Obsidian Vault",
    search_dirs = { vault_path },
  })
end, { desc = "Search current Obsidian vault" })
