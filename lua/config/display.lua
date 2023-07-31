local set = vim.opt 

-- :colorscheme <tab> gives a list of installed schemes

-- General colorscheme
vim.cmd 'colorscheme slate' 

-- that line at the bottom; see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
require('lualine').setup {
  options = { theme  = 'horizon' },
}

set.cursorline = true
set.cursorcolumn = true
set.number = relativenumber

--[[
Status line would like
LEFT > Mode / git stuff / filename / write status             
Righ < time? Snippet of current buffer? write status colour? 

--]]


