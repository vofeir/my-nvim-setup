return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'iceberg_dark',
      globalstatus = true,
    },
    sections = {
      lualine_c = {
        { "filename", file_status = true, path = 3, }
      },
      lualine_x = {
        {'datetime', style = "%l:%M %p"},
      }
    },
    winbar = {
      lualine_c = {"filename"},
    },
    inactive_winbar = {
      lualine_c = {
        {
          "filename",
          color = {fg = "#404040", bg = "#050505"}
        }
      },
    },
  },
}
