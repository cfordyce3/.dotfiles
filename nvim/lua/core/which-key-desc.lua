local wk = require("which-key")
wk.add({
    { "<leader>x", desc = "Close current buffer" },
    { "<leader>b", desc = "Open current buffer" },
    { "<leader>e", desc = "Open diagnostic window" },
    { "<leader><leader>x", desc = "Source current file" },
})
