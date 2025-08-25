return {
    { 'Mofiqul/dracula.nvim' },
    {
        'refractalize/oil-git-status.nvim',
        dependencies = {
            'stevearc/oil.nvim',
        },
        config = true,
    },

    -- Plugins for Base46
    { 'nvim-lua/plenary.nvim' },
    { 'nvchad/volt' },
    { 'nvim-tree/nvim-web-devicons', lazy = true },

    {
        'nvchad/ui',
        config = function()
            require 'nvchad'
        end,
    },
    {
        'nvchad/base46',
        lazy = true,
    },
}
