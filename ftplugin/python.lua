local set = vim.opt

set.expandtab = true
set.smartindent = true
set.tabstop = 2
set.shiftwidth = 2
  
vim.cmd 'nnoremap <leader>c :r<space>~/Snippets/classPython.py<cr>'
vim.cmd 'nnoremap <leader>t :r<space>~/Snippets/testPython.py<cr>'
vim.cmd 'nnoremap <leader>f :r<space>~/Snippets/functionPython.py<cr>'

-- logging
vim.cmd 'nnoremap csl Oprint()<esc>i'
vim.cmd 'inoremap csl print()<esc>i'
vim.cmd 'nnoremap db Obreakpoint()<esc>i'
vim.cmd 'inoremap db breakpoint()<esc>i'

vim.cmd 'nnoremap zs :term python3<cr>'
-- nnoremap tst :term pytest -x --disable-warnings<cr>
--[[
function! Test_current_file()
  let path_to_file = expand('%:p')
  let test = ':term pytest ' . path_to_file . ' --tb=line'
  exec test
endfunction

nnoremap th :exec Test_current_file()<cr>
--]]
