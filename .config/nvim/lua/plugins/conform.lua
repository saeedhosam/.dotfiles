return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'black', 'ruff' },
            scss = { 'prettier' },
            markdown = { 'prettier' },
            bash = { 'shfmt' },
            sh = { 'shfmt' },
            typescript = { 'prettier' },
            javascript = { 'prettier' },
            jsx = { 'prettier' },
            tsx = { 'prettier' },
            typescriptreact = { 'prettier' },
        },
    },
}
