require("lazy").setup({
  "folke/which-key.nvim",
  "folke/neoconf.nvim",
  "folke/neodev.nvim",

  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",

  "catppuccin/nvim", as = "catppuccin",

  "romgrk/barbar.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",

  "nvim-treesitter/nvim-treesitter",
  'nvim-lualine/lualine.nvim',
  'jiangmiao/auto-pairs',
  'lukas-reineke/indent-blankline.nvim',
  {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "<CurrentMajor>.*",
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
  },
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',             -- Required
      'williamboman/mason.nvim',           -- Optional
      'williamboman/mason-lspconfig.nvim', -- Optional

      -- Autocompletion
      'hrsh7th/nvim-cmp',         -- Required
      'hrsh7th/cmp-nvim-lsp',     -- Required
      'hrsh7th/cmp-buffer',       -- Optional
      'hrsh7th/cmp-path',         -- Optional
      'saadparwaiz1/cmp_luasnip', -- Optional
      'hrsh7th/cmp-nvim-lua',     -- Optional

      -- Snippets
      'L3MON4D3/LuaSnip',             -- Required
      --'rafamadriz/friendly-snippets'}, -- Optional
    }
  },
  {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
    },
  },
  "folke/zen-mode.nvim",
  "kylechui/nvim-surround",
  "mbbill/undotree",
})
