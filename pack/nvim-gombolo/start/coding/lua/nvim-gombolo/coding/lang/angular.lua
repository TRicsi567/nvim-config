local M = {}

local extension_to_type = {
  component = '.ts',
  template = '.html',
  style = '.scss',
  test = 'spec.ts',
}

---@param type 'component' | 'template' | 'style' | 'test'
local function get_component_filepath(type)
  local base = vim.fn.expand '%:.:h'
  local filename = vim.fn.expand '%:t:r'
  local suffix = '.component'

  local extension = extension_to_type[type]
  local contains_component = vim.endswith(filename, suffix)
  local filepath = vim.fs.joinpath(base, filename .. extension)

  if contains_component then
    filename = vim.fn.expand '%:t:r:r'
    filepath = vim.fs.joinpath(base, filename .. '.component' .. extension)
  end

  return filepath
end

local function edit_file(filepath)
  if not vim.uv.fs_stat(filepath) then
    return
  end

  vim.api.nvim_cmd({
    cmd = 'edit',
    args = { filepath },
  }, {})
end

function M.setup()
  vim.print 'MIIIII'

  vim.keymap.set('n', '<leader>ac', function()
    edit_file(get_component_filepath 'component')
  end)

  vim.keymap.set('n', '<leader>at', function()
    edit_file(get_component_filepath 'template')
  end)

  vim.keymap.set('n', '<leader>as', function()
    edit_file(get_component_filepath 'style')
  end)

  vim.keymap.set('n', '<leader>ap', function()
    edit_file(get_component_filepath 'test')
  end)
end

return M
