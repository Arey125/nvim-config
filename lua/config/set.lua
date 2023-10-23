vim.opt.rnu = true
vim.opt.nu = true

vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.g.codeium_disable_bindings = true 

vim.g.netrw_bufsettings = "noma nomod nonu nobl nowrap ro rnu"
vim.g.netrw_banner = 0
vim.g.netrw_sizestyle = "H"

vim.opt.hidden = true

vim.opt.path:append '**'
vim.opt.wildignore:append '**/node_modules/**'

-- font for firenvim
vim.opt.guifont = "JetBrainsMono Nerd Font"

