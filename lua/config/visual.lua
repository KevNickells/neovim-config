--[[
TODO does this need a reprise?
keyboardio layout isn't always right
vim.cmd "inoremap <PageUp> <esc>:exec OnSaveCommands()<cr>``zz<bar>:echom expand("%") . '    saved'<cr>"
vim.cmd "inoremap <PageDown> <esc>:exec OnSaveCommands()<cr>``zz<bar>:echom expand("%") . '    saved'<cr>"
--]]


-- Wrap current word
vim.cmd "vnoremap <leader>' lb<esc>i'<esc>ea'<esc>v"
vim.cmd 'vnoremap <leader>) lb<esc>i(<esc>ea)<esc>v'
vim.cmd 'vnoremap <leader>( lb<esc>i(<esc>ea)<esc>v'
vim.cmd 'vnoremap <leader>] lb<esc>i[<esc>ea]<esc>v'
vim.cmd 'vnoremap <leader>[ lb<esc>i[<esc>ea]<esc>v'
vim.cmd 'vnoremap <leader>} lb<esc>i{<esc>ea}<esc>v'
vim.cmd 'vnoremap <leader>{ lb<esc>i{<esc>ea}<esc>v'

-- Wrap current line
vim.cmd "vnoremap <leader>'' l0<esc>i'<esc>ea'<esc>v"
vim.cmd 'vnoremap <leader>)) l0<esc>i(<esc>A)<esc>v'
vim.cmd 'vnoremap <leader>(( l0<esc>i(<esc>A)<esc>v'
vim.cmd 'vnoremap <leader>]] l0<esc>i[<esc>A]<esc>v'
vim.cmd 'vnoremap <leader>[[ l0<esc>i[<esc>A]<esc>v'
vim.cmd 'vnoremap <leader>}} l0<esc>i{<esc>A}<esc>v'
vim.cmd 'vnoremap <leader>{{ l0<esc>i{<esc>A}<esc>v'

-- tab text while in visual mode
vim.cmd 'vnoremap <Tab> ><esc>v'

