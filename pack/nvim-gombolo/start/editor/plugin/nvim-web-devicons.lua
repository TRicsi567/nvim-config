local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'nvim-tree/nvim-web-devicons' },
}

require('nvim-web-devicons').setup {}
