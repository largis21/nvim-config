vim.g.mapleader = " "
-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Control s to save 
vim.keymap.set("n", "<C-s>", vim.cmd.w)

-- Move line
vim.keymap.set("n", "<m-j>", ":m .+1<CR>gn=gn")
vim.keymap.set("n", "<m-k>", ":m .-2<CR>gn=gn")
vim.keymap.set("v", "<m-j>", ":m .+1<CR>gv=gv")
vim.keymap.set("v", "<m-k>", ":m .-2<CR>gv=gv")

-- Keep selection when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Append line under to current line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Center when moving up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Real end or start of file
vim.keymap.set("n", "gg", "gg0")
vim.keymap.set("n", "G", "G$")

-- Select all
vim.keymap.set("n", "<C-a>", "gg0vG$")

