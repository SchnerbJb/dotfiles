local builtin = require('telescope.builtin')
local ui = require('harpoon.ui')
local mark = require('harpoon.mark')
local term = require('harpoon.term')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>a', mark.add_file)
-- vim.keymap.set('n', '<C-e>', ui.nav_next)
-- vim.keymap.set('n', '<C-a>', ui.nav_prev)

vim.keymap.set('n', '<leader>t', ':lua require("harpoon.term").gotoTerminal(1)<CR>')
