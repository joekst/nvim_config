local options = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Leader key ","
keymap("", ",", "<NOP>", options)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

keymap('i', 'jk', '<Esc>', options)
keymap('n', '<leader>nn', ':nohlsearch<CR>', options)
-- Navigate in quickfix window.
keymap('n', '<C-up>', ':cprev<CR>', options)
keymap('n', '<C-down>', ':cnext<CR>', options)

-- Open and close the quickfix window.
keymap('n', '<C-q><C-q>', ':cclose<CR>', options)
keymap('n', '<C-q>', ':copen<CR>', options)

-- Start a new buffer fast.
keymap('n', '<leader>n', ':enew<CR>', options)
keymap('v', 'y', 'ygv<ESC>', options)
 
-- Stay in indent mode
keymap("v", "<", "<gv", options)
keymap("v", ">", ">gv", options)

-- Keep search results centered
keymap('n', 'n', 'nzzzv', options)
keymap('n', 'N', 'Nzzzv', options)

-- Paste over currently selected text without yanking it
keymap('v', 'p', '"_dP', options)

-- Move current line up or down
keymap('n', '<M-Down>', '<Esc>:m .+1<CR>==', options)
keymap('i', '<M-j>', '<Esc>:m .+1<CR>==gi', options)
keymap('n', '<M-Up>', '<Esc>:m .-2<CR>==', options)
keymap('i', '<M-k>', '<Esc>:m .-2<CR>==gi', options)
keymap('v', '<M-j>', '<Esc>:m .>+1<CR>gv=gv', options)
keymap('v', '<M-k>', '<Esc>:m .<-2<CR>gv=gv', options)

-- 
-- -- Change buffers with TAB
keymap('n', '<TAB>', ':bnext<CR>', options)
keymap('n', '<S-TAB>', ':bprevious<CR>', options)
-- 
-- 
-- -- Telescope stuff used with session_manager
-- map {'n', '<space>ss', ':Telescope sessions [save_current=true]<CR>'}
-- 
-- 
-- -- Move this to after/harpoon.lua perhaps
-- map {'n', '<space>hh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>' }
-- map {'n', '<space>a', ':lua require("harpoon.mark").add_file()<CR>' }
-- map {'n', '<space>n', ':lua require("harpoon.ui").nav_file(1)<CR>' }
-- map {'n', '<space>e', ':lua require("harpoon.ui").nav_file(2)<CR>' }
-- map {'n', '<space>i', ':lua require("harpoon.ui").nav_file(3)<CR>' }
-- map {'n', '<space>o', ':lua require("harpoon.ui").nav_file(4)<CR>' }

