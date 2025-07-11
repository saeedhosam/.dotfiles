return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nushell/tree-sitter-nu' },
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = { 'TSInstall', 'TSBufEnable', 'TSBufDisable', 'TSModuleInfo' },
    build = ':TSUpdate',
    opts = function()
        return require 'config.treesitter'
    end,
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end,
}
