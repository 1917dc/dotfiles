return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "nikolvs/vim-sunbather" },
  { "stefanvanburen/rams.vim" },
  { "huyvohcmc/atlas.vim" },
  { "blazkowolf/gruber-darker.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruber-darker",
      "gruvbox",
    },
  },
}
