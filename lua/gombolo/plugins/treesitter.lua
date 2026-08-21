return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
  },
  config = function(_, opts)
    local ts = require 'nvim-treesitter'

    ts:setup()

    ts:install(opts.ensure_installed)

    vim.treesitter.language.register('xml', { 'svg', 'xhtml' })

    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '*.lua', '*.ts', '*.js', '*.html' },
      group = vim.api.nvim_create_augroup('nvim-treesitter', { clear = true }),
      callback = function()
        vim.treesitter.start()
      end,
    })

    vim.keymap.set({ 'n', 'x', 'o' }, '<C-Space>', function()
      if vim.treesitter.get_parser(nil, nil, { error = false }) then
        require('vim.treesitter._select').select_parent(vim.v.count1)
      else
        vim.lsp.buf.selection_range(vim.v.count1)
      end
    end, { desc = 'Select parent treesitter node or outer incremental lsp selections' })

    vim.keymap.set({ 'x', 'o' }, '<BS>', function()
      if vim.treesitter.get_parser(nil, nil, { error = false }) then
        require('vim.treesitter._select').select_child(vim.v.count1)
      else
        vim.lsp.buf.selection_range(-vim.v.count1)
      end
    end, { desc = 'Select child treesitter node or inner incremental lsp selections' })
  end,
}
