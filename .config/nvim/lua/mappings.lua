local map = vim.keymap.set

-- START OF NVCHAD DEFAULT MAPPINGS

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal new vertical term" })

-- toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

-- END OF NVCHAD DEFAULT MAPPINGS

-- Normal mode mappings
map("n", ";", ":", { desc = "Enter command mode" })
map("n", ":", "", { desc = "Remove default command mode" })
map("t", "<C-[>", "<C-\\><C-N>", { desc = "Escape termainal mode" })
map("n", "<C-[>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
map("n", "<leader>x", "<cmd>so<CR>", { desc = "Source file" })
map("n", "{", "}") -- idk why these were different than jk, at least I don't know 'yet'
map("n", "}", "{")
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true, silent = true })

-- Open Lazy
map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open Lazy" })

-- Center screen when jumping
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Delete without yanking
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Tabufline Init
local tabufline = require "nvchad.tabufline"

-- Buffer navigation
map({ "n", "i" }, "<M-.>", tabufline.next, { desc = "Next buffer" })
map({ "n", "i" }, "<M-,>", tabufline.prev, { desc = "Previous buffer" })

-- Buffer ordering
map("n", "<M-o>", function()
  tabufline.move_buf(1)
end, { desc = "Move the buffer forward" })
map("n", "<M-i>", function()
  tabufline.move_buf(-1)
end, { desc = "Move the buffer backwards" })

-- Buffer closure
map("n", "<leader>q", "<cmd>bdelete<CR>", { desc = "buffer close" })

-- Window navigation
map("n", "<C-h>", "<C-W>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-W>j", { desc = "Move to bottom window" })
map("n", "<C-k>", "<C-W>k", { desc = "Move to top window" })
map("n", "<C-l>", "<C-W>l", { desc = "Move to right window" })

-- Window repositioning
map("n", "<M-a>", "<C-W>H")
map("n", "<M-s>", "<C-W>J")
map("n", "<M-w>", "<C-W>K")
map("n", "<M-d>", "<C-W>L")

-- Window closure and separation
map("n", "<leader>w", "<cmd>close<CR>", { desc = "Close window" })
map("n", "<leader>o", "<cmd>only<CR>", { desc = "Close all windows except current" })

-- Splitting & Resizing
map("n", "<leader>av", "<cmd>vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>ah", "<cmd>split<CR>", { desc = "Split window horizontally" })
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
map("n", "<M-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<M-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
map("v", "<", "<gv", { desc = "Indent left and reselect" })
map("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
map("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Toggle Copilot chat
map("n", "<M-'>", "<cmd>CopilotChatToggle<CR>", { desc = "Copilot chat toggle" })

-- Telescope Init
local telescope = require "telescope.builtin"

-- map('n', '<M-/>', telescope.buffers, { desc = 'Search in buffers' })
map("n", "<leader>sh", telescope.help_tags, { desc = "Search in help pages" })
map("n", "<leader>sk", telescope.keymaps, { desc = "Search in keymaps" })
map("n", "<leader>sj", telescope.jumplist, { desc = "Search in recent jumplists" })
map("n", "<leader>sg", telescope.git_files, { desc = "Search in git" })
map("n", "<leader>sa", telescope.live_grep, { desc = "Search with grep" })
map("n", "<leader>sn", function()
  telescope.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "Search in Neovim config files" })

-- Copy Full File-Path
map("n", "<leader>pa", function()
  local path = vim.fn.expand "%:p"
  vim.fn.setreg("+", path)
  print("file:", path)
end)

-- Format file
map("n", "<leader>f", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format file" })
