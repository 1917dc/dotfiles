return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "nikolvs/vim-sunbather" },
  { "stefanvanburen/rams.vim" },
  { "huyvohcmc/atlas.vim" },
  { "blazkowolf/gruber-darker.nvim" },
  { "davidosomething/vim-colors-meh" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "meh",
      "gruvbox",
    },
  },
}
