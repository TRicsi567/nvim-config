local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'brenoprata10/nvim-highlight-colors' },
}

require('nvim-highlight-colors').setup {}
