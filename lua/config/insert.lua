-- this makes enter the autocomplete word. I might want tab but haven't figured this out.
vim.cmd 'inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"'

vim.cmd 'inoremap >> -->'                                    -- In-window terminal
vim.cmd 'inoremap << -->'                                    -- In-window terminal
