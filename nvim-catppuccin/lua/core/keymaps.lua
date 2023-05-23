local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Map Leader as Space
vim.g.mapleader = ' '


-- Clear search highlighting with <leader> and d
map('n', '<leader>d', ':nohl<CR>')

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to jk
map('i', 'jk', '<Esc>')
map('i', 'JK', '<Esc>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical


-- Fast saving with <leader> and w
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':qa!<CR>')

-- Navigate line
map('n', '<leader>h', '0')
map('n', '<leader>l', '$')

-- Easier movement
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')
map('n', 'n', 'nzz')

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- ZenMode
map('n', '<leader>z', ':ZenMode<CR>')
