local set = vim.opt

vim.g.yats_host_keyword = 1
vim.g.python3_host_prog = '/usr/bin/python3'

--[[
TODO

Snippets
source ~/.vim_my_settings/.visual-mode-remaps
source ~/.vim_my_settings/.insert-mode-remaps

--]]

--[[ from old config; not currently used

set.backspace = indent, eol, start -- backspace is weird apparently?
Fuzzy finder...
set.rtp+= /usr/local/opt/fzf

--]]

-- self explanatory settings
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.swapfile = false
set.fileformats = unix
set.mouse = n
set.textwidth = 80
set.clipboard= "unnamedplus"
set.ignorecase = true
set.autochdir = true

-- non self-explanatory settings
set.re = 0              -- something for a syntax plugin
set.smarttab = true     -- sensible delete at start of line
set.backupcopy = 'yes'  -- force 'write new copy of file'; this helps Docker in some way
set.hidden = true       -- keeps buffers in the background
set.timeout = true
set.timeoutlen = 300
set.ttimeoutlen = 0     -- these three establish how long to wait between keypresses
