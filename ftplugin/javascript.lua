--TODO reduce long fixed address?
-- snippets
vim.cmd 'nnoremap <leader>c :r<space>~/.config/nvim/ftplugin/snippets/classJavascript.js<cr>'
vim.cmd 'nnoremap <leader>f :r<space>~/.config/nvim/ftplugin/snippets/functionJavascript.js<cr>'
vim.cmd 'nnoremap <leader>m :r<space>~/.config/nvim/ftplugin/snippets/methodJavascript.js<cr>'
vim.cmd 'nnoremap <leader>s :r<space>~/.config/nvim/ftplugin/snippets/switchJavaScript.js<cr>'
vim.cmd 'nnoremap <leader>r :r<space>~/.config/nvim/ftplugin/snippets/reduceJavaScript.js<cr>'
vim.cmd 'nnoremap <leader>t :r<space>~/.config/nvim/ftplugin/snippets/testJavascript.js<cr>'
vim.cmd 'nnoremap <leader>tt :r<space>~/.config/nvim/ftplugin/snippets/shortTestJavascript.js<cr>'
vim.cmd 'nnoremap <leader>re :r<space>~/.config/nvim/ftplugin/snippets/reducerJavaScript.js<cr>'


-- comment line
-- vim.cmd 'inoremap <leader>cc I//<esc>'

-- debugger
vim.cmd 'nnoremap db Odebugger;<esc>'
vim.cmd 'inoremap db debugger;<space><esc>'

-- console.log
vim.cmd 'nnoremap csl Oconsole.log()<esc>i'
vim.cmd ' inoremap csl console.log()<esc>i'

-- console.table
vim.cmd 'nnoremap cst Oconsole.table()<esc>i'
vim.cmd 'inoremap cst console.table()<esc>i'

-- Object.keys
vim.cmd 'nnoremap obk OObject.keys()<esc>i'
vim.cmd 'inoremap obk Object.keys()<esc>i'

-- Object.getOwnPropertyNames
vim.cmd 'nnoremap obp OObject.getOwnPropertyNames()<esc>i'
vim.cmd 'inoremap obp Object.getOwnPropertyNames()<esc>i'


-- run test, update fixtures
vim.cmd 'nnoremap tst :term npm test<cr>'
vim.cmd 'nnoremap tu :term npm test -- -u<cr>'

-- const
vim.cmd 'nnoremap cc iconst<space>'
vim.cmd 'inoremap cc const<space>'

-- shortcuts because cc = const
vim.cmd 'inoremap acc acc<space>'
vim.cmd 'inoremap succ succesful<space>'

-- return
vim.cmd 'nnoremap rr ireturn<space>'
vim.cmd 'inoremap rr return<space>'

-- shortcuts because rr = return
vim.cmd 'inoremap arr array<space>'
vim.cmd 'inoremap err error<space>'
vim.cmd 'inoremap curr current<space>'


-- function to open node in-terminal, in-window
vim.api.nvim_create_user_command(
  'NodeTerminal',
  [[
    exec '15 split'
    exec ':term node'
    exec 'normal A'
  ]],
  {}
)

-- function to open node in-terminal, in-window
vim.api.nvim_create_user_command(
  'RunTests',
  [[
    exec '15 split'
    exec ':term npm test'
  ]],
  {}
)


-- test shortcut
vim.cmd 'nnoremap th :exec RunTests()<cr>'

-- shortcut for node terminal
vim.cmd 'nnoremap zs :NodeTerminal<cr>'

-- function to test current file
vim.api.nvim_create_user_command(
  'TestCurrentFile',
  [[
    let filePath = expand('%')
    let test = ':term npm test -- ' . filePath . ' --coverage=false'
    exec test
  ]],
  {}
)

