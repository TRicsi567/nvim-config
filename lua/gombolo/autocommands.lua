vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('tree-sitter-file-type', { clear = true }),
  pattern = '*',
  callback = function()
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end,
})
