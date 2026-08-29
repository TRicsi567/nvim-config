local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'stevearc/conform.nvim', version = 'v9.1.0' },
}

require('conform').setup {
  default_format_opts = {
    lsp_format = 'fallback',
  },
  format_on_save = {
    lsp_format = 'fallback',
    timeout = 1000,
  },
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff' },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    typescript = { 'prettierd', 'prettier', stop_after_first = true },
    html = { 'prettierd', 'prettier', stop_after_first = true },
    xml = { 'prettierd', 'prettier', stop_after_first = true },
    xhtml = { 'prettierd', 'prettier', stop_after_first = true },
    htmlangular = { 'prettierd', 'prettier', stop_after_first = true },
    scss = { 'prettierd', 'prettier', stop_after_first = true },
    css = { 'prettierd', 'prettier', stop_after_first = true },
    markdown = { 'prettierd', 'prettier', stop_after_first = true },
  },
}

vim.keymap.set('n', '<leader>cf', function()
  require('conform').format { async = true }
end, { desc = '[C]ode [F]ormat buffer' })
