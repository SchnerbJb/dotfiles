vim.cmd.colorscheme('catppuccin-macchiato')

keymap = vim.api.key_map

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

local light_color="catppuccin-latte"
local dark_color="catppuccin-macchiato"

local current=dark_color

function change_colorscheme()
    if current == light_color then
        vim.cmd.colorscheme(dark_color)
        current = dark_color
    else
        vim.cmd.colorscheme(light_color)
        current = light_color
    end
end

keymap('n', '<leader>c', "<cmd>lua change_colorscheme()<CR>", opts)


