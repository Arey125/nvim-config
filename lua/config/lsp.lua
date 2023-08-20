local lsp = require('lsp-zero').preset({})

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
		lsp.default_keymaps({buffer = bufnr})

	-- (Optional) Configure lua language server for neovim
	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    local opts = {buffer = bufnr}

    vim.keymap.set({'n', 'x'}, '<leader>f', function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, opts)
    vim.keymap.set('n', '<leader>ca', function()
        vim.lsp.buf.code_action()
    end, opts)
end)

lsp.setup()

require('lspconfig').clangd.setup({
  cmd = { "clangd", "--background-index", "--log=verbose", "--query-driver=/home/user_name/.conan/data/**/g++-*" },
})
