require "nvchad.mappings"
local builtin = require "telescope.builtin"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "\\", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>sn", function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
