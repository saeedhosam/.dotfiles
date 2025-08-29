return {
  { import = "nvchad.blink.lazyspec" },
  {
    "saghen/blink.cmp",
    opts = { keymap = { ["<CR>"] = false } },
  },
  {
    "benomahony/oil-git.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {},
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- for format on save to work, check the config file
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Disabled plugins
  { "nvim-tree/nvim-tree.lua", enabled = false },
}
