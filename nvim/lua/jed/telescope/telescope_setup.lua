-- Telescope setup

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")


require("telescope").setup({

  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<c-d>"] = actions.delete_buffer
        },
      },
    }, 
  },
  defaults = {
     file_sorter = require("telescope.sorters").get_fzy_sorter,
     prompt_prefix = " >",
     color_devicons = true,

     file_previewer = require("telescope.previewers").vim_buffer_cat.new,
     grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
     qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

     mappings = {
       i = {
           ["<C-x>"] = false,
           ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
           -- ["<C-h>"] = R("telescope").extentions.hop.hop, -- toggle selection
           --[[ ["<C-space>"] = function(prompt_bufnr)
            local opts = {
              callback = actions.toggle_selection,
              loop_callback = actions.send_selected_to_qflist,
            }
            require("telescope").extensions.hop._hop_loop(prompt_bufnr, opts)
          end, ]]
        },
     },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})

require("telescope").load_extension("fzy_native")
require("telescope").load_extension("hop")
require("telescope").load_extension("sessions")

local set_prompt_to_entry_value = function(prompt_bufnr)
  local entry = action_state.get_selected_entry()
  if not entry or not type(entry) == "table" then
    return
  end

  action_state.get_current_picker(prompt_bufnr):reset_prompt(entry.ordinal)
end

local M = {}

M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    promt_title = "< NvimRc >",
    cwd = vim.env.DOTFILES,
    hidden = true,
  })
end

M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map("i", "<c-d>", actions.git_delete_branch)
            map("n", "<c-d>", actions.git_delete_branch)
            return true
        end,
    })
end



return M
