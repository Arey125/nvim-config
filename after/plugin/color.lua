require('catppuccin').setup({
    disable_background = true
})
if vim.g.started_by_firenvim == false then
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
