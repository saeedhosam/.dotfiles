-- Always open in my coding hub
vim.cmd [[cd E:\_justCode]]

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 20

-- Keymaps
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<A-q>', '<C-w>q')
vim.keymap.set('n', '<A-s>', '<C-w>T')
vim.keymap.set('n', '<A-h>', 'gT')
vim.keymap.set('n', '<A-l>', 'gt')

vim.keymap.set('n', '<C-[>', '<cmd>noh<CR>')
vim.keymap.set('n', '<A-r>', function()
	dofile(vim.env.MYVIMRC)
	print("config reloaded!")
end)
