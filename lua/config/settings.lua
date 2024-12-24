local opt = vim.o

opt.termguicolors = true -- permite colores hex
opt.expandtab = true
opt.linebreak = true
opt.number = true
opt.shiftwidth = 4
opt.softtabstop = 4

-- Margen derecho:
opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#070712' })

-- gitsigns plugin colors
--   verde para adiciones:
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#00FF00', bg = 'NONE' })

--   amarillo para cambios:
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#FFFF00', bg = 'NONE' })

--   rojo para eliminaciones:
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#FF0000', bg = 'NONE' })
