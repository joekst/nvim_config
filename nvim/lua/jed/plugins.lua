_ = vim.cmd [[packadd packer.nvim]]
_ = vim.cmd [[packadd vimball]]

local has = function(x)
  return vim.fn.has(x) == 1
end

local executable = function(x)
  return vim.fn.executable(x) == 1
end

local is_wsl = (function()
  local output = vim.fn.systemlist "uname -r"
  return not not string.find(output[1] or "", "WSL")
end)()

return require("packer").startup {
  function(use)
    local local_use = function(first, second, opts)
      opts = opts or {}

      local plug_path, home
      if second == nil then
        plug_path = first
        home = "jed"
      else
        plug_path = second
        home = first
      end

      if vim.fn.isdirectory(vim.fn.expand("~/plugins/" .. plug_path)) == 1 then
        opts[1] = "~/plugins/" .. plug_path
      else
        opts[1] = string.format("%s/%s", home, plug_path)
      end

      use(opts)
    end

    local py_use = function(opts)
      if not has "python3" then
        return
      end

      use(opts)
    end

    use "wbthomason/packer.nvim"
    use "lewis6991/impatient.nvim"


    -- My Plugins
    use "kyazdani42/nvim-web-devicons"
    use "morhetz/gruvbox"
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"
    use "airblade/vim-gitgutter"
    use "tpope/vim-fugitive"
    use "mhinz/vim-startify"

  end,

  config = {
    display = {
      -- open_fn = require('packer.util').float,
    },
  },
}

