local utils = require 'nvim-gombolo.utils'

vim.pack.add { { src = utils.gh 'catppuccin/nvim', name = 'catppuccin' } }

require('catppuccin').setup {
  flavor = 'mocha',
  auto_integrations = true,
}

vim.cmd.colorscheme 'catppuccin'
