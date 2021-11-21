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
map {'n', '<TAB>', ':bnext<CR>'}
map {'n', '<S-TAB>', ':bprevious<CR>'}

map {'i', '<M-j>', '<Esc>:m .+1<CR>==gi'}
map {'i', '<M-k>', '<Esc>:m .-2<CR>==gi'}
map {'v', '<M-j>', '<Esc>:m .>+1<CR>gv==gv'}
map {'v', '<M-k>', '<Esc>:m .<-2<CR>gv==gv'}
