vim.opt.signcolumn = 'yes'
local lsp = require('lsp-zero')
-- local null_ls = require("null-ls")
local lspconfig = require("lspconfig")

-- null_ls.setup({
--     sources = {
-- 	null_ls.builtins.formatting.prettier,
-- 	null_ls.builtins.formatting.clang_format,
--     }
-- })

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'pyright',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
})

cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gp", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "<S-m>", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>od", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.cmd.highlight('SignColumn guibg=NONE')


lsp.setup()
