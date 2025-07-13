local opt = vim.opt
local o = vim.o
local g = vim.g

o.laststatus = 3
o.showmode = false

opt.showbreak = '↪ '
opt.linebreak = true
opt.breakindent = true

o.clipboard = 'unnamedplus'
o.cursorline = true
o.cursorlineopt = 'both'

o.scrolloff = 5

o.conceallevel = 2

o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.fillchars = { eob = ' ' }

o.ignorecase = true
o.smartcase = true -- my reaction was "so smart", Bram in user manual said "That's smar!" lol, it really is

o.mouse = 'a'

o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

opt.shortmess:append 'sI'

o.signcolumn = 'yes'
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true

o.updatetime = 0
vim.cmd [[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]]

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

local is_windows = vim.fn.has 'win32' ~= 0
local sep = is_windows and '\\' or '/'
local delim = is_windows and ';' or ':'
vim.env.Path = table.concat({ vim.fn.stdpath 'data', 'mason', 'bin' }, sep) .. delim .. vim.env.PATH
