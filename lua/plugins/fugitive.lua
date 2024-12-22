return {
  "tpope/vim-fugitive",
  cmd = {"G", "Git"},
  keys = {
    {"<leader>gl", ':G log --pretty=format:"%h   %ar    %s"<CR>', desc = "Pretty git log"},
  },
}
