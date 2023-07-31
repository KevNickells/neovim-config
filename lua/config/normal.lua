vim.cmd 'nnoremap <leader>z :Lexplore<cr>'                  -- why not just the basic file explorer?
vim.cmd 'nnoremap <Tab><Tab> :Lexplore<cr>'                 -- why such an opaque command for the file explorer?
vim.cmd 'nnoremap ff :FzfLua files<cr>'                     -- Lua-based fuzzy file finder
vim.cmd 'nnoremap fb :FzfLua buffers<cr>'                   -- Lua-based fuzzy buffer search
vim.cmd 'nnoremap ddd dG'                                   -- delete to end
vim.cmd 'nnoremap qqq :q!<cr>'                              -- quick exit
vim.cmd 'nnoremap dc :DeleteCharacterUnderCursor<cr>'       -- delete this character in file
vim.cmd 'nnoremap <C-u> :ToggleCasing<cr>'                  -- uppercase this word
vim.cmd 'nnoremap <Space> :set hlsearch! hlsearch?<CR>'     -- space highlights search
vim.cmd 'nnoremap n nzz'                                    -- centre screen when moving
vim.cmd 'nnoremap N Nzz'                                    -- centre screen when moving
vim.cmd 'nnoremap <Enter> zz'                               -- centre screen with enter
vim.cmd 'nnoremap mm :bdelete<cr>'                          -- remove current file from buffer
vim.cmd 'nnoremap mmm :bufdo bd<cr>'                        -- Remove all files from buffer
vim.cmd 'nnoremap <C-h> <C-w>h'                             -- buffer left
vim.cmd 'nnoremap <C-l> <C-w>l'                             -- buffer right
vim.cmd 'nnoremap <C-j> :bprevious<cr>'                     -- buffer up
vim.cmd 'nnoremap <C-k> :bnext<cr>'                         -- buffer down
vim.cmd 'nnoremap vv :vsplit<cr><C-w>l'                     -- open new window
vim.cmd 'nnoremap <silent> <Esc><Esc> :OnSaveCommands<cr>'  -- escape escape = save
vim.cmd 'nnoremap <C-o> <C-o>zz'                            -- centre in page
vim.cmd 'nnoremap <C-i> <C-i>zz'                            -- centre in page
vim.cmd 'nnoremap B 0'                                      -- beginning of line
vim.cmd 'nnoremap fr :cFindAndReplace()<cr>'                -- nicer find and replace
vim.cmd 'nnoremap frr :ReplaceThisWord()<cr>'               -- nicer replace this word
vim.cmd 'nnoremap <leader>cp :CopyAndDisplayFilePath<cr>'   -- show full path & copy to clipboard
vim.cmd 'nnoremap <leader>cf :CopyAndDisplayFileOnly<cr>'   -- show full path & copy to clipboard
vim.cmd 'nnoremap ee :edit<space>'                          -- new file shorthand
vim.cmd 'nnoremap Z ZZ'                                     -- close file shorthand
vim.cmd 'nnoremap ;; :pwd<cr>'                              -- current location shorthand
vim.cmd 'nnoremap H Hzz'                                    -- centre screen when scrolling
vim.cmd 'nnoremap L Lzz'                                    -- centre screen when scrolling
vim.cmd 'nnoremap <leader>ca ggvG$y<esc>2<C-o><Enter>'      -- copy whole file to clipboard
vim.cmd 'nnoremap <C-w> <C-w>='                             -- resize windows to the same
vim.cmd 'nnoremap cd :cd<space>'                            -- change directory quicker
vim.cmd 'nnoremap yw yW'                                    -- yank whole word
vim.cmd 'nnoremap G G$'                                     -- go to the end of file, not first char of end
vim.cmd 'nnoremap 000 :ToggleTextWidth<cr>'                 -- toggle 80 char limit

-- surround word
vim.cmd 'nnoremap <leader>" lbi"<esc>ea"<esc>'
vim.cmd 'nnoremap <leader>" lb<esc>i"<esc>ea"<esc>v'
vim.cmd "nnoremap <leader>' lbi'<esc>ea'<esc>"
vim.cmd 'nnoremap <leader>) lbi(<esc>ea)<esc>'
vim.cmd 'nnoremap <leader>( lbi(<esc>ea)<esc>'
vim.cmd 'nnoremap <leader>] lbi[<esc>ea]<esc>'
vim.cmd 'nnoremap <leader>[ lbi[<esc>ea]<esc>'
vim.cmd 'nnoremap <leader>} lbi{<esc>ea}<esc>'
vim.cmd 'nnoremap <leader>{ lbi{<esc>ea}<esc>'

-- surround line
vim.cmd 'nnoremap <leader>"" l0i"<esc>A"<esc>'
vim.cmd 'nnoremap <leader>"" l0<esc>i"<esc>A"<esc>v'
vim.cmd "nnoremap <leader>'' l0i'<esc>A'<esc>"
vim.cmd 'nnoremap <leader>)) l0i(<esc>A)<esc>'
vim.cmd 'nnoremap <leader>(( l0i(<esc>A)<esc>'
vim.cmd 'nnoremap <leader>]] l0i[<esc>A]<esc>'
vim.cmd 'nnoremap <leader>[[ l0i[<esc>A]<esc>'
vim.cmd 'nnoremap <leader>}} l0i{<esc>A}<esc>'
vim.cmd 'nnoremap <leader>{{ l0i{<esc>A}<esc>'


--[[

TODO config dropdown
" bring up the config dropdown
nnoremap <C-a> i<C-a>

" TODO will be superced by FZF
"nnoremap ff :FZF<CR>

" text search in open buffers; defined in .vim-functions-and-commands [probably]
"nnoremap <Leader>b FZFLines<cr>

"remap fzf to tt
"nnoremap tt :Find<Space>

" Search for current word in whole project
"nnoremap ttt EvBy:<c-f>iFind<Space><esc>p<c-c><Enter>

TODO will be superceded by prettier (?)
" highlights all and aligns the 2<C-o> is taking you back two positions, FYI
"nnoremap == ggvG==<esc>2<C-o>

TODO what's the deal with shells?
" open a nushell in-window
nnoremap ns : term nu<cr>

" open shell
nnoremap ss :term <cr>
--]]
