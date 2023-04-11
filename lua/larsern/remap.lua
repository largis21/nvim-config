vim.g.mapleader = " "
-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Control s to save 
vim.keymap.set("n", "<C-s>", vim.cmd.w)

-- Move line
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<C-k>", ":m .-2<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m .+1<CR>gv=gv")

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
-- Select all
vim.keymap.set("n", "<C-a>", "gg0vG$")
vim.keymap.set("n", "G", "G$")


