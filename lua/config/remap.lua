vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "n", "nzz")


vim.keymap.set("n", "<A-h>", ":bp<CR>")
vim.keymap.set("n", "<A-l>", ":bn<CR>")
vim.keymap.set("n", "<A-u>", ":bd<CR>")

vim.keymap.set("n", "<A-j>", "<C-d>zz")
vim.keymap.set("n", "<A-k>", "<C-u>zz")

vim.keymap.set("n", "<leader>ce", ":CodeiumEnable<CR>")
vim.keymap.set("n", "<leader>cd", ":CodeiumDisable<CR>")

vim.keymap.set("n", "<leader>q", ":mks! ~/dev/vim_session<CR>:q<CR>")
