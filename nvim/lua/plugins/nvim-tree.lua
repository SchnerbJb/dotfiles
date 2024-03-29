require("nvim-tree").setup()

local function open_nvim_tree(data)
    -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, {callback = open_nvim_tree})

vim.api.nvim_create_autocmd({ "BufRead" }, {
    callback = function()
    vim.cmd("NvimTreeClose")
    end
})

vim.api.nvim_create_autocmd({"QuitPre"}, {
    callback = function() vim.cmd("NvimTreeClose") end,
})

