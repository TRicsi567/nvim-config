local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'windwp/nvim-ts-autotag' },
}

require('nvim-ts-autotag').setup {
  opts = {
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false, -- Auto close on trailing </
  },
}
