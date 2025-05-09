require 'core.options'
require 'core.keymaps'


-- Install Lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Require plugins
require('lazy').setup({
    require 'plugins.treesitter',
    require 'plugins.neotree',
    require 'plugins.bufferline',
    require 'plugins.colortheme',
    require 'plugins.autopairs',
    require 'plugins.telescope',
    require 'plugins.lualine',
    require 'plugins.lsp',
    require 'plugins.autocompletion',
    require 'plugins.neoscroll',
    require 'plugins.whichkey',

})

require 'core.which-key-desc'

-- theme
vim.cmd 'colorscheme catppuccin'
