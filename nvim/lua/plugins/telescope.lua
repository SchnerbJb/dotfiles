local builtin = require('telescope.builtin')
local ui = require('harpoon.ui')
local mark = require('harpoon.mark')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.keymap.set('n', '<leader>gh', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>l', ui.nav_next)
vim.keymap.set('n', '<leader>h', ui.nav_prev)

