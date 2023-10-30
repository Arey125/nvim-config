vim.cmd(':COQnow --shut-up')

vim.g.coq_settings = {
  keymap = {
    manual_complete = "<C-y>"
  },
  clients = {
    snippets = {
      warn = {},
    }
  }
}
