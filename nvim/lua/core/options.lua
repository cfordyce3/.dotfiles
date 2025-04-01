local opt = vim.o

-- cursor and mouse
opt.guicursor = ""
opt.cursorline = true
opt.mouse = 'a'

-- line numbers
vim.wo.number = true
opt.relativenumber = true

-- clipboard to OS
opt.clipboard = 'unnamedplus'

-- lines
opt.wrap = true
opt.linebreak = true
opt.scrolloff = 5
opt.sidescrolloff = 8

-- tabs
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true

-- comment options
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
--vim.cmd([[highlight Normal guibg=NONE]])

-- backspace
opt.backspace = "indent,eol,start"

-- buffer splits
opt.splitright = true
opt.splitbelow = true

-- highlight when yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
