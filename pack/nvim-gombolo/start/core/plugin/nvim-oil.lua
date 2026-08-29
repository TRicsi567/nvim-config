local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'stevearc/oil.nvim', version = 'v2.16.0' },
}

local oil = require 'oil'
oil.setup()

vim.keymap.set('n', '<leader>e', function()
  require('oil').toggle_float()
end)

vim.keymap.set('n', '-', '<CMD>Oil<CR>')
