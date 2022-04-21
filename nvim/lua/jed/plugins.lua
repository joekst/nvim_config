_ = vim.cmd [[packadd packer.nvim]]
_ = vim.cmd [[packadd vimball]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  }
}

return packer.startup( 
  function(use)
    use "wbthomason/packer.nvim"
    use "lewis6991/impatient.nvim"

    -- My Plugins --

    -- Color and theme stuff
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "EdenEast/nightfox.nvim"                                
    use "lunarvim/darkplus.nvim"
    use { 'nvim-lualine/lualine.nvim',
      requres = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
      "numToStr/Comment.nvim",
      tag = 'v0.6'
    }

    -- Git stuff
    use "lewis6991/gitsigns.nvim"

--     use {'Shatur/neovim-session-manager'}
--     use "airblade/vim-gitgutter"
--     use "tpope/vim-fugitive"
    -- use "mhinz/vim-startify"
    use { 
      'goolord/alpha-nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use { 
          'nvim-telescope/telescope.nvim',
          requires = { 'nvim-lua/plenary.nvim' }
    }
    use { "nvim-telescope/telescope-media-files.nvim" }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {'nvim-telescope/telescope-hop.nvim'}
    use "nvim-telescope/telescope-fzy-native.nvim"
    -- use {
    --   'nvim-treesitter/nvim-treesitter',
    --   run = ':TSUpdate'
    -- }
--    use {
--      'numToStr/Comment.nvim',
--      config = function()
--        require('Comment').setup()
--      end
--    }
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
 --   use {
 --     'ThePrimeagen/harpoon',
 --     requires = {'nvim-lua/plenary.nvim'}    
 --   }
    use {'MTDL9/vim-log-highlighting'}
    use {
      'AckslD/nvim-neoclip.lua',
      config = function()
        require('neoclip').setup()
      end,
    }
    use "folke/which-key.nvim"

  end)




