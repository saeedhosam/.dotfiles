return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    -- Your ToggleTerm options (if any)
    size = 20,
    open_mapping = [[<C-\>]],
    shade_terminals = true,

    -- Function to set terminal keymaps
    on_create = function(term)
      local opts = { buffer = term.bufnr } -- Ensure the mappings apply only to the current terminal buffer
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end,
  },
}
