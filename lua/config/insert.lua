--[[
--
TODO reprise these?

work keyboard has pagedown in a stupid place
vim.cmd 'inoremap <PageDown> \\'
vim.cmd 'inoremap <PageUp> \|'

drop down for config things.
inoremap <C-a> <C-R>=ConfigDropdown()<CR>

" variable with config files as a list - could do with being dynamic
source ~/.config_file_list

let g:config_dropdown = 0
" Called in the insert remap above which creates the dropdown using complete; sets a global boolean variable so we know what sort of complete it is
func! ConfigDropdown()
    call complete(col('.'), g:config_file_list)
    let g:config_dropdown = 1
    return ''
endfunc

" Calls yet another command upon completion of the dropdown
augroup configDropdown
    autocmd!
    autocmd CompleteDone * call DoConfigDropdown(v:completed_item)
augroup END

" opens the corresponding file, deletes the text that was inserted.
function! DoConfigDropdown(value)
    if g:config_dropdown == 1
        normal ux
        execute(":e " . a:value.info)
        execute(":pclose")
    endif

    let g:config_dropdown = 0
endfunction
--]]

-- this makes enter the autocomplete word. I might want tab but haven't figured this out.
vim.cmd 'inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"'

-- In-window terminal
vim.cmd 'inoremap >> -->'
vim.cmd 'inoremap << <--'

-- move between buffers with ctrl+l/ h
vim.cmd 'inoremap <C-h> <esc><C-w>h'
vim.cmd 'inoremap <C-l> <esc><C-w>l'


