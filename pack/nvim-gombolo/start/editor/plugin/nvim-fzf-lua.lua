local utils = require 'nvim-gombolo.utils'

vim.pack.add {
  { src = utils.gh 'ibhagwan/fzf-lua', version = 'main' },
}

require('fzf-lua').setup { 'telescope' }

vim.keymap.set('n', '<leader><leader>', '<cmd>FzfLua git_files<cr>', { desc = '[F]ind git [F]iles' })
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<cr>', { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<cr>', { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<cr>', { desc = '[F]ind [G]rep' })
vim.keymap.set('n', '<leader>fc', '<cmd>FzfLua git_status<cr>', { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fp', '<cmd>FzfLua<cr>', { desc = '[F]ind [P]icker' })

vim.cmd.FzfLua 'register_ui_select'
