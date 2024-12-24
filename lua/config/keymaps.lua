vim.keymap.set("n", "ñ", ":", { desc = "CMD enter command mode" })

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Leader key for easymotion:
map('n', 's', '<Plug>(easymotion-s)', {})

map('n', '<leader>a', '<C-w>w', { desc = "Next window" })
map('n', '<leader>b', ':buffers<cr>', { desc = "Show buffers" })
map('n', '<leader>h', ':nohlsearch<cr>', { desc = "No search highlighting" })
map('n', '<leader>n', ':bnext<cr>', { desc = "Next buffer" })
map('n', '<leader>q', ':q<cr>', { desc = "Quit buffer" })
map('n', '<leader>r', ':set relativenumber!<CR>', { desc = "Toggle rel num" })
map('n', '<leader>s', ':w<cr>', { desc = "Save file" })

-- Go left/right on insert mode
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- Move lines with Alt + arrow keys
--   normal mode:
map('n', '<A-Down>', ':m+1<CR>==', { desc = "Move line down, normal" })
map('n', '<A-Up>', ':m-2<CR>==', { desc = "Move line up, normal" })
--   visual mode:
map('v', '<A-Down>', ":m'>+1<CR>gv", { desc = "Move line down, visual" })
map('v', '<A-Up>', ":m'<-2<CR>gv", { desc = "Move line up, visual" })

-- Indent:
map('v', '>', '>gv', { desc = "after tab in re-select the same"})
map('v', '<', '<gv', { desc = "after tab out re-select the same"})

-- Keep search in middle screen:
map('n', 'n', 'nzzzv', { desc = "Next seach and cursor in middle"})
map('n', 'N', 'Nzzzv', { desc = "Prev seach and cursor in middle"})
