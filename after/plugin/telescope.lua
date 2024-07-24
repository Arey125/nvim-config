require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "zig-cache" },
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

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('v', '<space>f', function()
	local text = vim.getVisualSelection()
	builtin.live_grep({ default_text = text })
end, {})
vim.keymap.set('n', '<leader>pf', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
