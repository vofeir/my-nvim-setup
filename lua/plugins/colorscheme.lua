return {
  "tiagovla/tokyodark.nvim",
  opts = {
    gamma = 0.70, -- theme brightness
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd [[colorscheme tokyodark]]
  end,
}
