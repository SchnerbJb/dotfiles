local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opt then
		options = vim.tbl_extend('force', options, opt)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('i', 'jk', '<Esc>')
map('i', 'JK', '<Esc>')

map('n', 'U', '<C-u>zz')
map('n', 'D', '<C-d>zz')
map('n', 'n', 'nzz')

map('n', 'H', '<cmd>bp<CR>')
map('n', 'L', '<cmd>bn<CR>')
-- map('n', 'J', '}')
-- map('n', 'K', '{')

map('n', '<C-H>', '<C-W>h')
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-l>', '<C-W>l')

map('n', '<leader>d', ':nohl<CR>')

map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

map('n', '<C-s>', '<C-w>s')
map('n', '<C-q>', '<C-w>v')
map('n', '<C-c>', '<C-w>q')
-- map('n', '<C-,>', '<CMD>resize +10<CR>')
-- map('n', '<C-.>', '<CMD>resize -10<CR>')
-- map('n', '<C->>', '10<C-w>>')
-- map('n', '<C-<>', '10<C-w><')

function newTab()
    vim.api.nvim_command('tabnew<CR>')
    require("telescope.builtin").find_files()
end

map('n', '<C-t>', '<CMD> lua newTab()<CR>')
map('n', '<C-n>', '<CMD>tabnext<CR>')
map('n', '<C-p>', '<CMD>tabnext -<CR>')



map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

map('n', '<leader>z', '<CMD>ZenMode<CR>')
map('n', '<leader>t', '<CMD>TagbarToggle<CR>')


map('n', 'm', ':')
