--[[vim.api.nvim_create_autocmd(
  { "FileType" },
  { pattern = { "typescript" }, command = "setlocal formatprg=prettier --parse typescript" }
) --]]

vim.api.nvim_create_autocmd(
  { "FileType" },
  { pattern = {"python" }, command = "set tabstop=2 shiftwidth=2" }
)

vim.api.nvim_create_autocmd(
  { "BufReadPost" },
  { pattern = { "*" }, command = [[
    if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  ]] }
)

vim.api.nvim_create_autocmd(
  { "BufWinLeave" },
  { pattern = { "*" }, command = "mkview" }
)

vim.api.nvim_create_autocmd(
  { "BufWinEnter" },
  { pattern = { "*" }, command = "silent! loadview" }
)
--[[

needs snippets... but also they should be js already?

There might be a better way than these
autocmd BufWritePre,BufNewFile,BufRead *.json :%!python -m json.tool
autocmd BufWritePost *.py compiler flake8 | make | cwindow
  --]]


