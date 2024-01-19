# Stuff I need to know

- This folder goes in ~/.config/nvim
- Filetype-specific things are in /ftplugin

# Manual bits:

- needs xclip: `sudo pacman -S xclip`
- needs pynvim: `sudo pacman -S python-pynvim`
- needs coc to be compiled: `cd ~/.local/share/nvim/lazy/coc.nvim && npm install` (takes a while)
- run `:checkhealth` after install
- nix installs rust-analyzer somewhere unexpected; after running `:CocInstall
  coc-rust-analyzer`, need to run `which rust-analyzer` and copy the binary from
  wherever it is to `~/.config/bin/rust-analyzer`

# What

This is me moving over to NeoVim; my previous setup had a fair amount of cack involved and NeoVims' LSP seems to work off the bat.
I'm trying to write it in lua but obviously that mostly means calling vimscript with the lua-vim API. Shrug.

# No why am I looking at this

Perhaps you are here because you're looking for a NeoVim setup. I've got a bunch
of shortcuts set for my own convenience that are hopefully well-explained. But
if you're looking for a 'my first neovim' setup, you might want to look at
something like [this basic setup instruction](https://dev.to/elvessousa/my-basic-neovim-setup-253l)
