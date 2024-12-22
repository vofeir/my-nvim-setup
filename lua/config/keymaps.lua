vim.keymap.set("n", "ñ", ":", { desc = "CMD enter command mode" })

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Leader key for easymotion:
map('n', 's', '<Plug>(easymotion-s)', {})

map('n', '<leader>a', '<C-w>w', {})                   -- next window
map('n', '<leader>b', ':buffers<cr>', {})             -- show buffers
map('n', '<leader>h', ':nohlsearch<cr>', {})  -- no search highlighting
map('n', '<leader>n', ':bnext<cr>', {})               -- next buffer
map('n', '<leader>q', ':q<cr>', {})                   -- quit buffer
map('n', '<leader>r', ':set relativenumber!<CR>', {}) -- toggle rel num
map('n', '<leader>s', ':w<cr>', {})                   -- save file

-- Go left/right on insert mode
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- Move lines with Alt + arrow keys
--   normal mode:
map('n', '<A-Down>', ':m+1<CR>==', {})
map('n', '<A-Up>', ':m-2<CR>==', {})
--   visual mode:
map('v', '<A-Down>', ":m'>+1<CR>gv", {})
map('v', '<A-Up>', ":m'<-2<CR>gv",{})
