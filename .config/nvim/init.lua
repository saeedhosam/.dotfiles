-- Always open in my coding hub
vim.cmd [[cd E:\_justCode]]

-- Mapping Leader and globals
vim.g.mapleader = " "
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 15
vim.opt.mouse = 'a'

-- Keymaps
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-q>', '<C-w>q') -- [q]uit
vim.keymap.set('n', '<A-e>', '<C-w>T') -- [e]ject
vim.keymap.set('n', '<A-=>', '<C-w>=')
vim.keymap.set('n', '<A-a>', '<C-w>H')
vim.keymap.set('n', '<A-s>', '<C-w>J')
vim.keymap.set('n', '<A-w>', '<C-w>K')
vim.keymap.set('n', '<A-d>', '<C-w>L')
vim.keymap.set('n', '<A-i>', 'gT')
vim.keymap.set('n', '<A-o>', 'gt')
vim.keymap.set('n', '<A-p>', ':vsplit<CR><C-w>l') -- [p]review
vim.keymap.set('n', '<C-[>', '<cmd>noh<CR>')
vim.keymap.set('t', '<C-[>', '<C-\\><C-n>')
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
vim.keymap.set("x", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down", silent = true })
vim.keymap.set("x", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up", silent = true })

vim.keymap.set('n', '<A-r>', function()
	dofile(vim.env.MYVIMRC)
	print("config reloaded!")
end)

vim.keymap.set('n', '<leader>st', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.cmd("startinsert")
	vim.api.nvim_win_set_height(0, 15)
end)

vim.keymap.set('n', '<A-m>', function()
	local current_tab = vim.api.nvim_get_current_tabpage()
	local tabs = vim.api.nvim_list_tabpages()

	local current_index
	for i, tab in ipairs(tabs) do
		if tab == current_tab then
			current_index = i
			break
		end
	end

	if not current_index or current_index >= #tabs then
		print("No next tab!")
		return
	end

	local next_tab = tabs[current_index + 1]
	local wins = vim.api.nvim_tabpage_list_wins(next_tab)
	if #wins == 0 then
		print("Next tab has no windows!")
		return
	end

	local buf = vim.api.nvim_win_get_buf(wins[1])
	vim.cmd('vsplit')
	vim.api.nvim_set_current_buf(buf)
	vim.cmd.wincmd("L")
	vim.cmd('tabclose ' .. (current_index + 1))
end, {})

