return {
    'mikavilpas/yazi.nvim',
    enabled = false,
    event = 'VeryLazy',
    dependencies = {
        'folke/snacks.nvim',
    },
    keys = {
        {
            '\\',
            mode = { 'n', 'v' },
            '<cmd>Yazi<cr>',
            desc = 'Open yazi at the current file',
        },
    },
    opts = {
        open_for_directories = true, -- open yazi instead of netrw
        keymaps = {
            show_help = '<f1>',
        },
        floating_window_scaling_factor = 0.9,
        yazi_floating_window_winblend = 0,
    },
    -- if you use `open_for_directories=true`, this is recommended
    init = function()
        -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
}
