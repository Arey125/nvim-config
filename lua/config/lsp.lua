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
    vim.keymap.set('n', '<leader>l', function()
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

require('lspconfig').tsserver.setup({
  handlers = {
    ["textDocument/definition"] = function (_, results, params)
      if results == nil or vim.tbl_isempty(results) then
         local _ = vim.lsp.log.info() and vim.lsp.log.info(params.method, 'No location found')
         return nil
      end

      if vim.tbl_islist(results) then
         vim.lsp.util.jump_to_location(results[1])
         if #results > 1 then
            local isReactDTs = false

            for _, result in pairs(results) do
               if string.match(result.uri, "react/index.d.ts") then
                  isReactDTs = true
                  break
               end
            end

            if not isReactDTs then
               vim.lsp.util.set_qflist(util.locations_to_items(results))
               vim.api.nvim_command("copen")
               vim.api.api.nvim_command("wincmd p")
            end
         end
      else
         vim.lsp.util.jump_to_location(results)
      end
    end
  }
})
