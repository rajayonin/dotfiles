return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        scope = {
            show_start = false,
            highlight = "Whitespace"  -- change color (defaults to LineNr, which is too dark)
        },
        indent = {
            highlight = "LineNr"  -- change color (defaults to Whitespace, which is too bright)
        }
    },
}

