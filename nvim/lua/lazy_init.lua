require("lazy").setup({
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",
	"preservim/tagbar",
	"nvim-lua/plenary.nvim",

	-- "ellisonleao/gruvbox.nvim",
	-- "catppuccin/nvim", as = "catppuccin",
	-- { "rose-pine/neovim", name = 'rose-pine' },
	-- "EdenEast/nightfox.nvim",
	-- "shaunsingh/nord.nvim",

	"nvim-telescope/telescope.nvim",

	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/nvim-treesitter-context",
	"jiangmiao/auto-pairs",

	"tpope/vim-fugitive",
	"folke/zen-mode.nvim",

	"tikhomirov/vim-glsl",

	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"ThePrimeagen/harpoon",

	{
	    "timtro/glslView-nvim",
	    filetype=glsl,
	    config = function()
		require('glslView').setup {
		    exe_path = 'glslViewer',
		    argument = { '-l', '-w', '128', '-h', '256'}
	}
	    end
    },
	{
	    "nvim-lualine/lualine.nvim",
	    config = function()
		require("lualine").setup{
		    sections = {
			lualine_x = {'filetype'},
		    }
		}
	    end
	},

	{
	    "VonHeikemen/lsp-zero.nvim",
	    branch = 'v1.x',
	    dependencies = {
	      -- LSP Support
	      'neovim/nvim-lspconfig',
	      'williamboman/mason.nvim',
	      'williamboman/mason-lspconfig.nvim',

	      -- Autocompletion
	      'hrsh7th/nvim-cmp',
	      'hrsh7th/cmp-nvim-lsp',
	      'hrsh7th/cmp-buffer',
	      'hrsh7th/cmp-path',
	      'saadparwaiz1/cmp_luasnip',
	      'hrsh7th/cmp-nvim-lua',

	      'L3MON4D3/LuaSnip',
	      'rafamadriz/friendly-snippets',
	    }
	},
	{
	    "kylechui/nvim-surround",
	    config = function()
		require("nvim-surround").setup()
	    end
	},
	{
	    "numToStr/Comment.nvim",
	    config = function()
		require("Comment").setup()
	    end,
	},
	{
		"vimwiki/vimwiki",
		init = function()
		    vim.g.vimwiki_map_prefix = '<leader>v'
		    vim.g.vimwiki_list = {
			{
			    path = '~/Documents/notes/wiki',
			    path = '~/Documents/notes/wiki',
			 }
		     }
		 end
	},

})
