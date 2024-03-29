require("larsern.remap")
require("larsern.packer")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undotree"
vim.opt.undofile = true

vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

vim.opt.list = true
vim.opt.termguicolors = true
