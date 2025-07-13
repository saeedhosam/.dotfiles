-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'both'
vim.opt.scrolloff = 10

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.showbreak = '↪ '
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.conceallevel = 2

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true -- my reaction was "so smart" out loud, Bram in user manual said "That's smart!" lol, it really is
vim.opt.incsearch = true

-- Visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.cmdheight = 1
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.showmode = false
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 300
vim.opt.fillchars = { eob = ' ' }

-- File handling
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false

-- Behavior settings
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.autochdir = false
vim.opt.iskeyword:append '-'
vim.opt.path:append '**'
vim.opt.selection = 'exclusive'
vim.opt.mouse = 'a'
vim.opt.clipboard:append 'unnamedplus'
vim.opt.modifiable = true
vim.opt.encoding = 'UTF-8'

-- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.wildignore:append { '*.o', '*.obj', '*.pyc', '*.class', '*.jar' }

-- Better diff options
vim.opt.diffopt:append 'linematch:60'

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- Tabline display settings
vim.opt.showtabline = 1
vim.opt.tabline = ''

local is_windows = vim.fn.has 'win32' ~= 0
local sep = is_windows and '\\' or '/'
local delim = is_windows and ';' or ':'
vim.env.Path = table.concat({ vim.fn.stdpath 'data', 'mason', 'bin' }, sep) .. delim .. vim.env.PATH
