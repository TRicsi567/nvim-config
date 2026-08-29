local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'lewis6991/gitsigns.nvim' },
}

require('gitsigns').setup()
