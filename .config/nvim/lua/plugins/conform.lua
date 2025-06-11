return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            scss = { 'prettier' },
            markdown = { 'mdformat' },
            bash = { 'shfmt' },
            sh = { 'shfmt' },
            typescript = { 'prettier' },
            javascript = { 'prettier' },
            jsx = { 'prettier' },
            tsx = { 'prettier' },
            typescriptreact = { 'prettier' },
            toml = { 'taplo' },
        },
    },
}
