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


    -- My Plugins --


    use "kyazdani42/nvim-web-devicons"

    use "EdenEast/nightfox.nvim"
    use { 'nvim-lualine/lualine.nvim',
          requres = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {'Shatur/neovim-session-manager'}

    use "airblade/vim-gitgutter"
    use "tpope/vim-fugitive"

    -- use "mhinz/vim-startify"
    use { 
          'goolord/alpha-nvim',
          requires = {'kyazdani42/nvim-web-devicons'}
    }

    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use { 
          'nvim-telescope/telescope.nvim',
--	        commit = '587a10d1494d8ffa1229246228f0655db2f0a48a', --last working commit for 0.5.0
          requires = { 'nvim-lua/plenary.nvim' }
    }

    use  {'nvim-telescope/telescope-hop.nvim'}
    use "nvim-telescope/telescope-fzy-native.nvim"
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }

    -- LSP stuff
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/nvim-cmp'}

    -- use {'simrat39/symbols-outline.nvim'} -- Give a tree view of symbols, using language server.

    -- Snippet tool
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}

    use {
      'ThePrimeagen/harpoon',
      requires = {'nvim-lua/plenary.nvim'}    
  }

  end,

  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
}

