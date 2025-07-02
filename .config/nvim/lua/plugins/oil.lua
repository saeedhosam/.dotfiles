return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
        -- enabled = false,
        lazy = false,
        opts = {
            watch_for_changes = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ['L'] = function()
                    local oil = require 'oil'
                    local actions = require 'oil.actions'
                    local entry = oil.get_cursor_entry()
                    if entry then
                        local dir = vim.fn.expand '%:p'
                        local path = dir .. entry.name
                        path = path:gsub('^oil://', '')
                        if entry.name:match '%.pdf$' then
                            vim.fn.jobstart({ 'zathura', path }, { detach = true })
                            actions.close.callback()
                        else
                            actions.select.callback()
                        end
                    end
                end,
                ['H'] = { 'actions.parent', mode = 'n' },
                ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
                ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
                ['<C-t>'] = { 'actions.select', opts = { tab = true } },
                ['<C-p>'] = 'actions.preview',
                ['<C-l>'] = 'actions.refresh',
                ['_'] = { 'actions.open_cwd', mode = 'n' },
                ['`'] = { 'actions.cd', mode = 'n' },
                ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
                ['gs'] = { 'actions.change_sort', mode = 'n' },
                ['gx'] = 'actions.open_external',
                ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
                ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
            },
        },
        vim.keymap.set('n', '\\', function()
            require('oil').toggle_float()
        end),
    },
}
