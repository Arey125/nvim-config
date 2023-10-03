return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'ThePrimeagen/vim-be-good'

  use { "catppuccin/nvim", as = "catppuccin",  
		config = function()
			vim.cmd('colorscheme catppuccin-macchiato')
		end
  }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'

  use {
      'Exafunction/codeium.vim',
      config = function ()
          -- Ctrl + Space
          vim.keymap.set('i', '<c-space>', function () return vim.fn['codeium#Accept']() end, { expr = true })
          vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
          vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
          vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
      end
  }

  use{'christoomey/vim-tmux-navigator', lazy = false}

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use {
    "m4xshen/hardtime.nvim",
    requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
  }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use'jose-elias-alvarez/null-ls.nvim'
end)

