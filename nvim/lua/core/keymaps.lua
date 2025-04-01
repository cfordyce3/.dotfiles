-- leaders
vim.g.mapleader = " "
vim.g.localmapleader = " "

local km = vim.keymap

-- space does nothing in normal/visual modes
km.set({ 'n', 'v', }, '<Space>', '<Nop>', {silent = true})

local opts = { noremap = true, silent = true }


-- sets escape to exit terminal mode
km.set('t', '<Esc>', "<C-\\><C-n>")

-- new terminal
km.set('n', 'T', ':terminal<CR>', opts)

-- don't keep deleted char in buffer
km.set('n', 'x', '"_x', opts)

-- keep last yanked
km.set('v', 'p', '"_dP', opts)

-- center on scroll
km.set('n', '<C-d>', '<C-d>zz', opts)
km.set('n', '<C-u>', '<C-u>zz', opts)

-- center on find
km.set('n', 'n', 'nzzzv', opts)
km.set('n', 'N', 'Nzzzv', opts)

-- buffer nav
km.set('n', '<Tab>', ':bnext<CR>', opts)
km.set('n', '<S-Tab>', ':bprevious<CR>', opts)
km.set('n', '<leader>x', ':bdelete!<CR>', opts)
km.set('n', '<leader>b', '<cmd> enew <CR>', opts)

-- window nav
km.set('n', '<C-k>', ':wincmd k<CR>', opts)
km.set('n', '<C-j>', ':wincmd j<CR>', opts)
km.set('n', '<C-h>', ':wincmd h<CR>', opts)
km.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- stay in indent mode
km.set('v', '<', '<gv', opts)
km.set('v', '>', '>gv', opts)

-- sourcing
km.set('n', '<leader><leader>x', ':source %<CR>', opts)

-- open diganostic window
km.set('n', '<leader>e', ':lua vim.diagnostic.open_float()<CR>', opts)
