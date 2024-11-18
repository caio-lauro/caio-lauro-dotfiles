vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- TABS && INDENTATION
opt.tabstop = 4             				-- number of spaces
opt.shiftwidth = 4          				-- size
opt.expandtab = false				        -- tab = space
opt.autoindent = true      					-- keep indent

-- SEARCH SETTINGS
opt.ignorecase = true						-- upper == lower
opt.smartcase = true						-- if upper in search: upper != lower

opt.cursorline = true

-- APPEARANCE
opt.termguicolors = true					-- colorscheme
opt.background = "dark"						-- darkmode
opt.signcolumn = "yes"						-- show sign column

-- BACKSPACE
opt.backspace = "indent,eol,start"			-- setup backspace

-- CLIPBOARD
opt.clipboard:append("unnamedplus")			-- use system clipboard

-- SPLIT WINDOWS
opt.splitright = true						-- split vertical => right
opt.splitbelow = true						-- split horizontal => bottom


