--[[
--function! LaTeX_compile_and_open()
   let current_file = expand('%:r')
    let compile = '!xelatex ' . current_file . '.tex -halt-on-error'
   silent exec compile
    exec ':e!'
    echo 'pdf compiled'
endfunction

nnoremap <leader>c :exec LaTeX_compile_and_open()<cr>
--]]
