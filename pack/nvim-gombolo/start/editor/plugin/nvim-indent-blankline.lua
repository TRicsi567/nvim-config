local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'lukas-reineke/indent-blankline.nvim' },
}

require('ibl').setup()
