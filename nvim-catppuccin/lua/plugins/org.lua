require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    perso = "~/notes/perso",
                }
            }
        }
    }
}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }


keymap('n', '<leader>vw', ':VimwikiIndex<CR>', opts)
keymap('n', '<leader>vt', ':VimwikiTabIndex<CR>', opts)
keymap('n', '<leader>vs', ':VimwikiUISelect<CR>', opts)
keymap('n', '<leader>vi', ':VimwikiDiaryIndex<CR>', opts)
keymap('n', '<leader>v<Leader>v', ':VimwikiMakeDiaryNote<CR>', opts)
keymap('n', '<Leader>v<Leader>t', ':VimwikiTabMakeDiaryNote<CR>', opts)
keymap('n', '<Leader>v<Leader>y', ':VimwikiMakeYesterdayDiaryNote<CR>', opts)
keymap('n', '<Leader>v<Leader>m', ':VimwikiMakeTomorrowDiaryNote<CR>', opts)

