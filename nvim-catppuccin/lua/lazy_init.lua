require("lazy").setup({
  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",
  "nvim-lua/plenary.nvim",

  "catppuccin/nvim", as = "catppuccin",

  "romgrk/barbar.nvim",
  "nvim-telescope/telescope.nvim",

  "nvim-treesitter/nvim-treesitter",
  'nvim-lualine/lualine.nvim',
  'jiangmiao/auto-pairs',
  {-- {{{
        "L3MON4D3/LuaSnip",
  },-- }}}
{-- {{{
    'VonHeikemen/lsp-zero.nvim',
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
  },-- }}}
  "kylechui/nvim-surround",
  "numToStr/Comment.nvim",
  {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_map_prefix = '<leader>v'
        vim.g.vimwiki_list = {
            {
                path = '~/Documents/notes/wiki',
             }
         }
     end
  },
  "nvim-neorg/neorg",
  'mfussenegger/nvim-dap',
  {
      'folke/zen-mode.nvim',
      config = function()
          require("zen-mode").setup()
      end,
  },
})
