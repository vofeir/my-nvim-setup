return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup({
      default_file_explorer = true, -- Usa Oil como el explorador por defecto
      view_options = {
        show_hidden = true,         -- Muestra archivos ocultos
      },
    })
  end
}
