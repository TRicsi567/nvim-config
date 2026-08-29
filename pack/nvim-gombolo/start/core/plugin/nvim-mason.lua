local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  {
    src = utils.gh 'mason-org/mason.nvim',
    version = 'v2.3.1',
  },
}

require('mason').setup()
