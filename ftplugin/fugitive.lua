vim.keymap.set("n", "<leader>pu", ":G push<CR>")
vim.keymap.set("n", "<leader>f", ":G fetch<CR>")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>c', builtin.git_branches, {})

vim.keymap.set("n", "q", ":q<CR>")
