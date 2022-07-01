require('nvim-treesitter.configs').setup({
  ensure_installed = "all",

  highlight = {
    enable = true,
    custom_captures = {
      
    },
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremenal = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },
})

-- vim.api.nvim_exec([[
--   set foldmethod=expr
--   set foldexpr=nvim_treesitter#foldexpr()
--   ]], true)

