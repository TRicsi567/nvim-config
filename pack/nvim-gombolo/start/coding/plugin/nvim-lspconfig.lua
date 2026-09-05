local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'b0o/schemastore.nvim', version = 'main' },
  { src = utils.gh 'neovim/nvim-lspconfig', version = 'v2.11.0' },
}

require('nvim-gombolo.coding.lang.lua').setup()
require('nvim-gombolo.coding.lang.json').setup()
require('nvim-gombolo.coding.lang.typescript').setup()
require('nvim-gombolo.coding.lang.angular').setup()

require('nvim-gombolo.coding.lsp_keybindings').setup()
