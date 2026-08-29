local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('nvim-gombolo.coding.lsp-keybinding', { clear = true }),
    callback = function(ev)
      local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
      local fzfLua = require 'fzf-lua'

      if client:supports_method 'textDocument/definition' then
        vim.keymap.set('n', 'gd', function()
          vim.lsp.buf.definition { loclist = true }
        end, { buf = ev.buf, desc = '[G]oto [D]efinition' })
      end

      if client:supports_method 'textDocument/references' then
        vim.keymap.set('n', 'grr', function()
          if fzfLua == nil then
            vim.lsp.buf.references()
            return
          end

          fzfLua.lsp_references {}
        end, { buf = ev.buf, desc = '[G]oto [R]eferences' })
      end
    end,
  })
end

return M
