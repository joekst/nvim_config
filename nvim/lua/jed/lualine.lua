local statusOk, lualine = pcall(require, "lualine")
if not statusOk then
  vim.notify("require lualine failed!")
  return
end

local icons require "jed.icons"

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local dignostics = {
  "disgnostics",
  sources = { "nvim_diagnostics" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  --symbols = { error = icons.git.Add .. " ", modified = icons.git.Mod .. " ", removed = icons.git.Remove .. " " },
  colored = false,
  update_in_insert = false,
  always_visible = true,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
}

local location = {
	"location",
	padding = 0,
}

local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

vim.opt.laststatus = 2 

lualine.setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "toggleterm" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { branch },
    lualine_b = { diagnostics },
    lualine_x = { diff, spaces, "encoding", filetype },
    lualine_y = { location },
    lualine_z = { progress },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
