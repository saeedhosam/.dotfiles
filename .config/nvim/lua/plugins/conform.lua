return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'ruff' },
            scss = { 'prettier' },
            bash = { 'shfmt' },
            sh = { 'shfmt' },
            yuck = { 'yuckfmt' },
        },
    },
}
