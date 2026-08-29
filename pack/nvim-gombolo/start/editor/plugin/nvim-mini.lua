local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'echasnovski/mini.nvim' },
}

require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.bufremove').setup()
require('mini.statusline').setup()
require('mini.sessions').setup {
  autoread = true,
  autowrite = true,
}
require('mini.input').setup()

-- local hipatterns = require 'mini.hipatterns'
-- hipatterns.setup {
--   hex_color = hipatterns.gen_highlighter.hex_color(),
-- }

vim.keymap.set('n', '<leader>bd', function()
  require('mini.bufremove').unshow()
end, { desc = '[B]uffer [D]elete' })

vim.keymap.set('n', '<leader>ws', function()
  vim.ui.input({ prompt = 'Session name: ' }, function(session_name)
    if not session_name then
      return
    end

    require('mini.sessions').write(session_name)
  end)
end, { desc = '[W]orkspace Session [W]rite' })

vim.keymap.set('n', '<leader>wr', function()
  require('mini.sessions').read()
end, { desc = '[W]orkspace Session [R]ead' })

vim.keymap.set('n', '<leader>wp', function()
  require('mini.sessions').select()
end, { desc = '[W]orkspace Session [P]ick' })

vim.keymap.set('n', '<leader>wR', function()
  require('mini.sessions').restart()
end, { desc = '[W]orkspace Session [R]estart' })

vim.keymap.set('n', '<leader>wl', function()
  require('mini.sessions').get_latest()
end, { desc = '[W]orkspace Session [L]atest' })
