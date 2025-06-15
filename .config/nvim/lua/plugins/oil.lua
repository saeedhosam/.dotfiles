return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    keys = {
        {
            '\\',
            function()
                require('oil').toggle_float()
            end,
            desc = 'Open Oil in CWD',
        },
    },
    opts = {
        keymaps = {
            ['L'] = 'actions.select',
            ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
            ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
            ['<C-t>'] = { 'actions.select', opts = { tab = true } },
            ['<C-p>'] = 'actions.preview',
            ['<C-c>'] = { 'actions.close', mode = 'n' },
            ['<C-l>'] = 'actions.refresh',
            ['H'] = { 'actions.parent', mode = 'n' },
            ['_'] = { 'actions.open_cwd', mode = 'n' },
            ['`'] = { 'actions.cd', mode = 'n' },
            ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
            ['gs'] = { 'actions.change_sort', mode = 'n' },
            ['gx'] = 'actions.open_external',
            ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
            ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
        },
    },
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
