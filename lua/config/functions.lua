vim.api.nvim_create_user_command(
  'OnSaveCommands',
  [[
    silent exec 'mark m'
    silent exec '%s/\s\+$//ge'
    silent exec '%s/^\n\n\n\+/\r/ge'
    write
    silent exec "'m"
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'FindAndReplace',
  [[
    let find = input('Find: ')
    let replace = input('Replace: ')
    exec '%s/' . find . '/' . replace . '/g'
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'ReplaceThisWord',
  [[
    let find = expand('<cword>')
    let replace = input('Replace: ')
    exec '%s/' . find . '/' . replace . '/g'
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'ReplaceThisText',
  [[
    let replace = input('Replace: ')
    exec '%s/' . a:string . '/' . replace . '/g'
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'DeleteCharacterUnderCursor',
  [[
    silent exec 'normal! "ayl'
    let current_character = getreg("a")
    silent exec '%s/' . current_character . '//g'
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'CopyAndDisplayFilePath',
  [[
    let @+=expand("%")
    echo @+<cr>'
  ]],
  {}
)

vim.api.nvim_create_user_command(
  'CopyAndDisplayFileOnly',
  [[
    let @+=expand("%:t")
    echo @+<cr>'
  ]],
  {}
)

vim.g.toggle_text_width = 0

vim.api.nvim_create_user_command(
  'ToggleTextWidth',
  [[
    if g:toggle_text_width
      exec ':set tw=0'
      let g:toggle_text_width = 0
    else
      exec ':set tw=80'
      let g:toggle_text_width = 1
    endif
  ]],
  {}
)

vim.g.toggle_casing = 0

vim.api.nvim_create_user_command(
  'ToggleCasing',
  [[
    if g:toggle_casing
      exec 'normal EvBU'
      let g:toggle_casing = 0
    else
      exec 'normal EvBu'
      let g:toggle_casing = 1
    endif
  ]],
  {}
)

--[[
--
May be needed
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
--]]

--[[
example
vim.api.nvim_create_user_command(
  'Steely',
  \[\[ let xx  = 'some shit here'
  echo 'balls' \]\],
  {} -- param name and value here; see https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
)
--]]

