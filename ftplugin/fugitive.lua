vim.keymap.set("n", "<leader>pu", ":G push<CR>", {buffer = true})
vim.keymap.set("n", "<leader>f", ":G fetch<CR>", {buffer = true})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>c', builtin.git_branches, {buffer = true})

vim.keymap.set("n", "q", ":q<CR>", {buffer = true})
