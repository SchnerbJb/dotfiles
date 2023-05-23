require("gruvbox").setup({
	italic = {
		strings = false,
		comments = false,
		folds = false,
	},
	overrides = {
		Comment = { fg = "#458588" },
	},
})
vim.opt.termguicolors = true

vim.cmd([[colorscheme nordfox]])

-- vim.g.nord_italic = false
-- require('nord').set()
-- vim.cmd([[colorscheme nord]])

-- vim.opt.background = "light"
-- vim.cmd([[colorscheme gruvbox]])




-- vim.g.gruvbox_material_background = 'medium'
-- vim.g.gruvbox_material_foreground = 'material'
-- vim.g.gruvbox_material_disable_italic_comment = 1
-- vim.g.gruvbox_material_better_performance = 1

-- vim.cmd("colorscheme gruvbox-material")
