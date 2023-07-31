vim.g.mapleader = ","

require("config")

--[[
TODO

-- Port everything
  -- ~/.vim_my_settings/.autocommands
  -- ~/.vim_my_settings/.spellings
  -- ~/.vim_my_settings/.plugins
  -- ~/.vim_my_settings/.settings
  -- ~/.vim_my_settings/.functions...
  -- ~/.vim_my_settings/.visual
  -- ~/.vim_my_settings/.insert
  -- ~/.vim_my_settings/.insert
  --
Lua examples

(from https://dev.to/mr_destructive/configure-neovim-in-lua-4can)

vim.opt.tabstop = 2

vim.cmd 'colorscheme slate'

vim.keymap.set({mode}, {lhs}, {rhs}, {options})
vim.keymap.set('n', 'bls', ':echo "balls"<cr>')
  -- {options} is like this {noremap = false} but defaults to noremap = true
 
Function things...
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


--]]
