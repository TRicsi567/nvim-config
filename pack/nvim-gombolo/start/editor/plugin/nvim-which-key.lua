local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'folke/which-key.nvim' },
}

require('which-key').setup {
  delay = 1000,
  icons = { mappings = true },
}
