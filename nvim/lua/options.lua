local g = vim.g
local opt = vim.opt


opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.foldmethod = 'manual'
opt.completeopt = 'menuone,noinsert,noselect'
opt.scrolloff = 5

opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true

-- opt.colorcolumn = "80"

opt.shiftwidth = 4
opt.smartindent = true
opt.syntax = "enable"
opt.linebreak = true

opt.splitbelow = true
opt.splitright = true

-- opt.guicursor=''

-- AutoCmd
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('TextYankPost', {
    pattern = "*",
    callback = function()
	vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
    end,
    desc = "Highlight yank",
})

autocmd('BufWritePre', {
    pattern = '*',
    command = ":%s/\\s\\+$//e"
})

autocmd('BufEnter', {
    pattern = '*',
    command = 'set fo-=c fo-=r fo-=o'
})

-- Enable spell checking for certain file types
autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)

augroup('setLineLength', { clear = true })
autocmd('Filetype', {
  group = 'setLineLength',
  pattern = { 'text', 'markdown', 'html', 'xhtml', 'javascript', 'typescript' },
  command = 'setlocal cc=0'
})

