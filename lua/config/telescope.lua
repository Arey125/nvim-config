require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        preview_height = 0.3,
        prompt_position = "bottom",
      },
    }
  },
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["d"] = "delete_buffer",
        },
      }
    }
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
