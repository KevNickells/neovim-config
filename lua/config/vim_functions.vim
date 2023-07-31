function! OnSaveCommands()
  mark `
  exec '%s/\s\+$//ge'
  call histdel("search" -1)
  exec '%s/^\n\n\n\+/\r/ge'
  call histdel("search" -1)
  silent exec 'write'
  normal ``
endfunction

" Search in open buffers
function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

function! ReplaceFromGeneralRegister()
  let replace = input('Replace ' . @" . 'with: ')
  exec '%s/' . @" . '/' . replace . '/g'
endfunction

function! FindAndReplace()
  let find = input('Find: ')
  let replace = input('Replace: ')
  exec '%s/' . find . '/' . replace . '/g'
endfunction

function! ReplaceThisWord()
  let find = expand('<cword>')
  let replace = input('Replace: ')
  exec '%s/' . find . '/' . replace . '/g'
endfunction

function! ReplaceThisText(string)
  let replace = input('Replace: ')
  exec '%s/' . a:string . '/' . replace . '/g'
endfunction

function! Cd_and_chill()
  let dir = execute(":r ~/.last_dir")
  echo dir
endfunction

" Don't think this works
function! Run_here()
    let dir = expand('%:t')
    echo dir
    exec ':term sh' . dir
endfunction

" delete all characters under cursor
function! Delete_character_under_cursor()
  exec 'normal! "ayl'
  let current_character = getreg("a")
  exec '%s/' . current_character . '//g'
endfunction


" functions from elsewhere (ie, I don't know what they do)
command! FZFLines call fzf#run({
      \   'source':  <sid>buffer_lines(),
      \   'sink':    function('<sid>line_handler'),
      \   'options': '--extended --nth=3..',
      \   'down':    '60%'
      \})

"Remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" <leader><Enter> - fuzzy search in current buffers
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Leader> :call fzf#run({
      \   'source':  reverse(<sid>buflist()),
      \   'sink':    function('<sid>bufopen'),
      \   'options': '+m',
      \   'down':    len(<sid>buflist()) + 2
     \ })<CR>

