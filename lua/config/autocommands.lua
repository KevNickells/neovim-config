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

vim.api.nvim_create_autocmd(
  { "BufWritePost" },
  { pattern = { "*.json" }, command = "CocCommand formatJson --preset-json --indent=2 " }
)


vim.api.nvim_create_autocmd(
  { "BufWritePre" },
  { pattern = { "*" }, command = "lua vim.lsp.buf.format()" }
)
--[[

There might be a better way than these
autocmd BufWritePost *.py compiler flake8 | make | cwindow
  --]]


