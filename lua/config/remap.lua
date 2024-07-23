vim.g.mapleader = " "
vim.keymap.set("n", "n", "nzz")

vim.keymap.set("n", "<A-h>", ":bp<CR>")
vim.keymap.set("n", "<A-l>", ":bn<CR>")
vim.keymap.set("n", "<A-u>", ":bd<CR>")

vim.keymap.set("n", "<A-j>", "<C-d>zz")
vim.keymap.set("n", "<A-k>", "<C-u>zz")

vim.keymap.set("n", "Q", ":q<CR>")

vim.keymap.set("n", "gx", ":execute '!xdg-open ' .. shellescape(expand('<cfile>'), v:true)<CR><CR>")

vim.keymap.set("n", "<leader>ce", ":CodeiumEnable<CR>")
vim.keymap.set("n", "<leader>cd", ":CodeiumDisable<CR>")

vim.keymap.set("n", "<leader>g", ":G<CR>")

vim.keymap.set("n", "-", ":NnnPicker %:p:h<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<leader>ps', ':find ')

-- vim.keymap.set(
-- 	{ "n", "o", "x" },
-- 	"w",
-- 	"<cmd>lua require('spider').motion('w')<CR>",
-- 	{ desc = "Spider-w" }
-- )
-- vim.keymap.set(
-- 	{ "n", "o", "x" },
-- 	"e",
-- 	"<cmd>lua require('spider').motion('e')<CR>",
-- 	{ desc = "Spider-e" }
-- )
-- vim.keymap.set(
-- 	{ "n", "o", "x" },
-- 	"b",
-- 	"<cmd>lua require('spider').motion('b')<CR>",
-- 	{ desc = "Spider-b" }
-- )
-- vim.keymap.set(
-- 	{ "n", "o", "x" },
-- 	"ge",
-- 	"<cmd>lua require('spider').motion('ge')<CR>",
-- 	{ desc = "Spider-ge" }
-- )

-- vim.keymap.set("n", "<leader>h", ":CodyChat<CR>")
vim.keymap.set("n", "<leader>t", ":CodyTask ")

vim.keymap.set("v", "p", "P")

-- vim.keymap.set("n", "<Leader>r", "vipyPgvO<Esc>O<Esc>gv!zsh<CR>")

vim.keymap.set("n", "<leader>s", ":Cheat<CR>")
vim.keymap.set({ 'n', 'v' }, '<leader>k', ':Gen<CR>')
vim.keymap.set({ 'n' }, '<leader>d', ':DevdocsOpen<CR>')
