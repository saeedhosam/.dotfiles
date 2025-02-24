-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = function(state)
            local node = state.tree:get_node()
            require('neo-tree.sources.filesystem.commands').open(state)
            if node.type == 'file' then
              vim.cmd 'Neotree close'
            end
          end,
          ['L'] = function(state)
            local node = state.tree:get_node()
            if node.type == 'file' then
              require('neo-tree.sources.filesystem.commands').open(state)
              -- Keep focus on Neo-tree
              vim.cmd 'wincmd p'
            end
          end,
          ['<CR>'] = '',
          ['<BS>'] = '',
          ['h'] = 'navigate_up',
        },
      },
    },
  },
}
