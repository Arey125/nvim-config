vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":w<CR>:Ex<CR>")
vim.keymap.set("n", "n", "nzz")


vim.keymap.set("n", "<A-h>", "gT")
vim.keymap.set("n", "<A-l>", "gt")

vim.keymap.set("n", "<A-j>", "<C-d>zz")
vim.keymap.set("n", "<A-k>", "<C-u>zz")
