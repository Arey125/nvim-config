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
			{'L3MON4D3/LuaSnip'},     -- Required
      {'hrsh7th/nvim-cmp'},     -- Required
		}
	}

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

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

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({
    "epwalsh/obsidian.nvim",
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "Zettelkasten",
            path = "~/Zettelkasten",
          }
        }
      })
    end,
  })

  use {
      'glacambre/firenvim',
      run = function() vim.fn['firenvim#install'](0) end 
  }

  use'RaafatTurki/hex.nvim'

  use {
    'stevearc/oil.nvim',
  }

  use {
    "luukvbaal/nnn.nvim",
    config = function() require("nnn").setup() end
  }

  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  })

  -- use { "chrisgrieser/nvim-spider" }

  use { 'sourcegraph/sg.nvim', run = 'nvim -l build/init.lua' }

  -- use 'ivanesmantovich/xkbswitch.nvim'

  use {
    "kndndrj/nvim-dbee",
    requires = {
      "MunifTanjim/nui.nvim",
    },
    run = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup(--[[optional config]])
    end
  }

  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-cheat.sh'

  use 'ThePrimeagen/harpoon'
end)

