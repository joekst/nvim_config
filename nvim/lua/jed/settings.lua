local opt = vim.opt

opt.tabstop = 2                 -- Insert 2 spaces for a tab.
opt.shiftwidth = 2              -- Number of space characters inserted for indentation.
opt.softtabstop = 0             -- 
opt.expandtab = true            -- Convert tabs to spaces.
opt.smarttab = true             -- Makes tabbing smarter.
opt.smartindent = true          -- Makes indenting somewhat smarter.
opt.autoindent = true           -- Good autoindent.
opt.scrolloff = 8               -- Keep a buffer to the top of the terminal.
opt.sidescrolloff = 8           -- Keep a buffer to the side of the terminal.
opt.hidden = true               -- Required to keep multiple buffers open.
opt.cmdheight = 2               -- More space for displaying messages.

opt.backup = false              -- 
opt.writebackup = false         --
opt.swapfile = false            -- No swapfile! :)

opt.updatetime = 300            -- Faster completion.
opt.timeoutlen = 300            -- Default value is 1000ms!

opt.clipboard = "unnamedplus"   -- Copy outside of vim.
opt.splitbelow = true           -- Always split horizontals to below
opt.splitright = true           -- Always split verticals to the right

opt.ruler = true                -- Always show cursor position
opt.number = true               -- Line numbers

opt.iskeyword:append('-')       -- Treat dash separated words as word-text-objects
opt.mouse = 'a'                 -- Enable mouse.

opt.background = 'dark'         -- Tell vim what the background colors look like.

opt.wildmode = "longest:list:full"
opt.wildmenu = true
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*", "**/.git/*" }
opt.wildoptions = "pum"
opt.pumblend = 17

opt.laststatus = 2               -- Always display statusline.
opt.cursorline = true            -- Enable highlightning of the current line.
opt.signcolumn = 'yes:2'           -- Always show the signcolumn.

opt.incsearch = true             -- Make search act like in modern browsers.
opt.showmatch = true             -- Show matching brackets when text indicator is over them.
opt.ignorecase = true            -- Ignore case when searching.
opt.belloff = "all"              -- No f-ing bell.

opt.formatoptions = opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

opt.showmode = false
opt.showcmd = true

opt.breakindent = true
opt.showbreak = string.rep(" ", 3)

opt.termguicolors = true

