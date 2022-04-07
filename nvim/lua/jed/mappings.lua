-- local map = vim.api.nvim_set_keymap

local map = function(key)
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

map {'i', 'jk', '<Esc>'}
map {'n', '<leader>nn', ':nohlsearch<CR>'}

-- Change buffers with TAB
map {'n', '<TAB>', ':bnext<CR>'}
map {'n', '<S-TAB>', ':bprevious<CR>'}

map {'n', '<M-Down>', '<Esc>:m .+1<CR>=='}
map {'i', '<M-j>', '<Esc>:m .+1<CR>==gi'}
map {'n', '<M-Up>', '<Esc>:m .-2<CR>=='}
map {'i', '<M-k>', '<Esc>:m .-2<CR>==gi'}
map {'v', '<M-j>', '<Esc>:m .>+1<CR>gv=gv'}
map {'v', '<M-k>', '<Esc>:m .<-2<CR>gv=gv'}

-- Navigate in quickfix window.
map {'n', '<C-up>', ':cprev<CR>'}
map {'n', '<C-down>', ':cnext<CR>'}

-- Open and close the quickfix window.
map {'n', '<C-q><C-q>', ':cclose<CR>'}
map {'n', '<C-q>', ':copen<CR>'}

-- Start a new buffer fast.
map {'n', '<leader>n', ':enew<CR>'}

map {'v', 'y', 'ygv<ESC>' }

-- Keep search results centered
map {'n', 'n', 'nzzzv' }
map {'n', 'N', 'Nzzzv' }

map {'n', '<leader>u', ':PackerSync<CR>' }

-- Telescope stuff used with session_manager
map {'n', '<space>ss', ':Telescope sessions [save_current=true]<CR>'}


-- Move this to after/harpoon.lua perhaps
map {'n', '<space>hh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>' }
map {'n', '<space>a', ':lua require("harpoon.mark").add_file()<CR>' }
map {'n', '<space>n', ':lua require("harpoon.ui").nav_file(1)<CR>' }
map {'n', '<space>e', ':lua require("harpoon.ui").nav_file(2)<CR>' }
map {'n', '<space>i', ':lua require("harpoon.ui").nav_file(3)<CR>' }
map {'n', '<space>o', ':lua require("harpoon.ui").nav_file(4)<CR>' }

