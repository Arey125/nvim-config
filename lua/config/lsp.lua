local lsp = require('lsp-zero').preset({})
local util = require 'lspconfig.util'

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
		lsp.default_keymaps({buffer = bufnr})

	-- (Optional) Configure lua language server for neovim
	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    local opts = {buffer = bufnr}

    vim.keymap.set({'n', 'x'}, '<leader>r', function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, opts)
    vim.keymap.set('n', '<leader>la', function()
        vim.lsp.buf.code_action()
    end, opts)

end)

lsp.setup()

require('lspconfig').asm_lsp.setup({
	cmd = { 'asm-lsp' },
	filetypes = { 'asm', 's', 'S' },
	root_dir = util.root_pattern('*.asm', '*.s', '*.S', '.git'),
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
    },
})
