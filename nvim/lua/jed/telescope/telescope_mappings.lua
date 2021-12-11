-- Telescope mappings


TelescopeMapArgs = TelescopeMapArgs or {}

local map_tele = function(key, f, options, buffer)
  local map_key = vim.api.nvim_replace_termcodes(key .. f, true, true, true)

  TelescopeMapArgs[map_key] = options or {}

  local mode = "n"
  local rhs = string.format("<cmd>lua R('jed.telescope')['%s'](TelescopeMapArgs['%s'])<CR>", f, map_key)
  local map_options = {
    noremap = true,
    silent = true,
  }

  if not buffer then
    vim.api.nvim_set_keymap(mode, key, rhs, map_options)
  else
    vim.api.nvim_buf_set_keymap(0, mode, key, rhs, map_options)
  end
end

map_tele("<leader>en", "edit_neovim")

map_tele("<space>fb", "buffers")
map_tele("<space>ff", "curbuf")

map_tele("<space>fe", "file_browser")
map_tele("<space>fi", "search_all_files")
map_tele("<space>ft", "git_files")

map_tele("<space>fo", "search_open_buffers")
map_tele("<space>of", "list_old_files")

-- map_tele("<space>ss", ":Telescope sessions [save_current=true]<CR>")

return map_tele

