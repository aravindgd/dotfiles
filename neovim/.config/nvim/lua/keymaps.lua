-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', ']l', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', ']e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

local function current_file_full_path()
  return vim.fn.expand("%:p:.")
end

-- Define a function to copy the current file name to the system clipboard
function Copy_current_file_name()
  local file_name = vim.fn.expand("%:t")

  print('Copied: ' .. file_name)

  vim.fn.setreg('+', file_name)
end

-- Define a function to copy the current file path to the system clipboard
function Copy_current_file_full_path()
  local file_path = current_file_full_path()

  print('Copied: ' .. file_path)

  vim.fn.setreg('+', file_path)
end

-- Define a function to copy the current file path with the current line number to the system clipboard
function Copy_current_file_full_path_with_line_number()
  local line_number = vim.fn.line('.')
  local full_result = current_file_full_path() .. ":" .. line_number

  print('Copied: ' .. full_result)

  vim.fn.setreg('+', full_result)
end


vim.keymap.set('n', '<leader>y', '<cmd>lua Copy_current_file_full_path()<CR>', { noremap = true, silent = true, desc = 'Cop[y] current file full path' })
vim.keymap.set('n', '<leader>yl', '<cmd>lua Copy_current_file_full_path_with_line_number()<CR>', { noremap = true, silent = true, desc = 'Cop[y] current file full path with [l]ine number -> filename:linenumber' })
vim.keymap.set('n', '<leader>yy', '<cmd>lua Copy_current_file_name()<CR>', { noremap = true, silent = true, desc = 'Cop[[y]] current file name' })


-- neo-tree keymap
vim.keymap.set('n', '<leader>t', ':Neotree reveal<CR>', { desc = 'Toggle File [T]ree' })
-- vim: ts=2 sts=2 sw=2 et
