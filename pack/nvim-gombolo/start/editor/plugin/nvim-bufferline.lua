local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'catppuccin/nvim', name = 'catppuccin' },
  { src = utils.gh 'akinsho/bufferline.nvim', version = 'v4.9.1' },
}

local palette = require 'catppuccin.palettes.mocha'

require('bufferline').setup {
  options = {
    themable = true,
    max_name_length = 25,
    mode = 'tabs',
    separator_style = 'slope',
    -- indicator = {
    --   style = 'underline',
    -- },
  },
  highlights = {
    tab_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    tab_separator_selected = {
      bg = palette.lavender,
    },
    close_button_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    buffer_selected = {
      fg = palette.crust,
      bg = palette.lavender,
      sp = palette.red,
    },
    numbers_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    diagnostic_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    hint_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    hint_diagnostic_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    info_selected = {
      fg = palette.crust,
      bg = palette.lavender,
    },
    modified_selected = {

      fg = palette.crust,
      bg = palette.lavender,
    },
    separator_selected = {
      bg = palette.lavender,
    },
    indicator_selected = {
      bg = palette.lavender,
    },
    duplicate_selected = {
      fg = palette.crust,
      bg = palette.lavender,
      italic = true,
    },
  },
}

-- #b4befe
