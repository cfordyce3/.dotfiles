return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = { 
            'bash', 
            'rust',
            'python',
            'c', 
            'cpp', 
            'lua', 
            'luadoc', 
            'markdown', 
            'markdown_inline', 
            'toml',
            'yaml',
            'vim', 
            'vimdoc', 
            'html', 
            'css',
            'javascript',
            'go',
            'java',
            'gitignore',
        },
        auto_install = true,
        highlight = {
            enable = true,
        },
        indent = { enable = true, },
    }
}
