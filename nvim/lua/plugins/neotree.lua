return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    vim.keymap.set('n', '<Bslash>', ':Neotree toggle position=left<CR>', { noremap = true, silent = true})
}
