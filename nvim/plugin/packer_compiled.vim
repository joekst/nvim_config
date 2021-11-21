" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/jonas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jonas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  gruvbox = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-startify"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
