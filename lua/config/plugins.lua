local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "junegunn/fzf", build = "./install --bin" },
  { "HerringtonDarkholme/yats.vim" },
  { "MaxMEllon/vim-jsx-pretty" },
  { "neoclide/coc.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "sindrets/diffview.nvim" },
  { "rust-lang/rust.vim" },
  { "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({})
    end
  }
})

