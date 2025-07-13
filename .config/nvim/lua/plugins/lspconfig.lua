return {
    'neovim/nvim-lspconfig',
    dependencies = {
        {
            'folke/lazydev.nvim',
            ft = 'lua', -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
                },
            },
        },
    },
    config = function()
        local lspconfig = require 'lspconfig'

        -- add the lsp server using `lspconfig.<name>.setup {}`
        lspconfig.lua_ls.setup {}
        lspconfig.ts_ls.setup {}
        lspconfig.marksman.setup {}
        lspconfig.taplo.setup {}
        lspconfig.ruff.setup {}
        lspconfig.hyprls.setup {}
        lspconfig.qmlls.setup {
            cmd = { 'qmlls', '-E' },
        }
    end,
}
