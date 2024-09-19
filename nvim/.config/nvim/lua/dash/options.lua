vim.highlight.on_yank()
vim.g.autoformat = true

local opt = vim.opt

opt.guicursor = ""

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.breakindent = true

opt.incsearch = true

opt.number = true
opt.relativenumber = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"
opt.updatetime = 100
opt.timeoutlen = 1000
opt.cursorline = true
opt.scrolloff = 8
opt.termguicolors = true
