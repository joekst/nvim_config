local dashboard = require('alpha.themes.dashboard')
math.randomseed(os.time())

local function button(sc, txt, keybind, keybind_opts)
  b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.h1 = "Function"
  b.opts.h1_shortcut = "Type"
  return b
end

local function pick_color()
  local colors = { "String", "Identifier", "Keyword", "Number" }
  return colors[math.random(#colors)]
end

local function footer()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  return datetime
    .. "   "
    .. total_plugins
    .. " plugins"
    .. "   v"
    .. vim.version().major
    .. "."
    .. vim.version().minor
    .. "."
    .. vim.version().patch 
end

dashboard.section.header.val = {

  [[ *********************************** ]],
  [[ *********************************** ]],
  [[ *********************************** ]],
  [[ *********************************** ]],
  [[ *********************************** ]],
}

dashboard.section.header.opts.h1 = pick_color()

dashboard.section.buttons.val = {
  button("<space>fe", "  File Explorer"),
  button("<space>ft", "  Find file"),
  button("<space>ff", "  Find word in current buffer"),
  button("<space>ss", "  List sessions"),
  button("<Leader>n", "  New file"),
  button("<Leader>u", "  Update plugins"),
  button("q", "  Quit", "<Cmd>qa<CR>"),
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

require('alpha').setup(dashboard.opts)

