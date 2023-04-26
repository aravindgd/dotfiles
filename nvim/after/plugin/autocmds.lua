-- This is for inserting space after comma
local autoCommaGrp = vim.api.nvim_create_augroup("AutoCommaGroup", { clear = true })

vim.api.nvim_create_autocmd(
  { "BufNewFile", "BufRead" }, {
    pattern = {"*.haml", "*.erb", "*.rb", "*.rake", "*.lua"},
    command = "inoremap , ,<space>",
    group = autoCommaGrp
  }
)

-- Remove trailing white spaces 
-- Doing this because the space after comma makes whitespace at end of line
-- vim.api.nvim_create_autocmd(
--   { "BufWritePre" }, {
--     pattern = {"*.haml", "*.erb", "*.rb", "*.rake", "*.lua"},
--     command = "%s/s*$//",
--     group = autoCommaGrp
--   }
-- )
