local options = {
  tabstop = 2,                 -- Insert 2 spaces for a tab.
  shiftwidth = 2,              -- Number of space characters inserted for indentation.
  softtabstop = 0,             -- 
  expandtab = true,            -- Convert tabs to spaces.
  smarttab = true,             -- Makes tabbing smarter.
  smartindent = true,          -- Makes indenting somewhat smarter.
  autoindent = true,           -- Good autoindent.
  scrolloff = 8,               -- Keep a buffer to the top of the terminal.
  sidescrolloff = 8,           -- Keep a buffer to the side of the terminal.
  hidden = true,               -- Required to keep multiple buffers open.
  cmdheight = 2,               -- More space for displaying messages.

  backup = false,              -- 
  writebackup = false,         --
  swapfile = false,            -- No swapfile! :)

  updatetime = 300,            -- Faster completion.
  timeoutlen = 300,            -- Default value is 1000ms!

  clipboard = "unnamedplus",   -- Copy outside of vim.
  splitbelow = true,           -- Always split horizontals to below
  splitright = true,           -- Always split verticals to the right

  ruler = true,                -- Always show cursor position
  number = true,               -- Line numbers

  mouse = 'a',                 -- Enable mouse.

  background = 'dark',         -- Tell vim what the background colors look like.

  wildignore = "__pycache__",
  pumblend = 17,
  wildmode = "longest:full",
  wildoptions = "pum",

  laststatus = 2,               -- Always display statusline.
  cursorline = true,            -- Enable highlightning of the current line.
  signcolumn = 'yes:2',           -- Always show the signcolumn.

  incsearch = true,             -- Make search act like in modern browsers.
  showmatch = true,             -- Show matching brackets when text indicator is over them.
  ignorecase = true,            -- Ignore case when searching.
  belloff = "all",              -- No f-ing bell.


  showmode = false,
  showcmd = true,

  breakindent = true,
  showbreak = string.rep(" ", 3),

  termguicolors = true,

  guifont = "Hack\\ Nerd\\ Font\\ Mono:h18",

  keywordprg = ":help",    -- Use K to access help for word under cursor

  cursorcolumn = true,
  -- opt.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 0

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]       -- Treat dash separated words as word-text-objects

--  formatoptions = opt.formatoptions
--    - "a" -- Auto formatting is BAD.
--    - "t" -- Don't auto format my code. I got linters for that.
--    + "c" -- In general, I like it when comments respect textwidth
--    + "q" -- Allow formatting comments w/ gq
--    - "o" -- O and o, don't continue comments
--    + "r" -- But do continue when pressing enter.
--    + "n" -- Indent past the formatlistpat, not underneath it.
--    + "j" -- Auto-remove comments if possible.
--    - "2", -- I'm not in gradeschool anymore
--
