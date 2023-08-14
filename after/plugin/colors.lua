function setColor(color)
    require("onedark").setup({
        style = "warm",
        diagnostics = {
            undercurl = false,
            darker = true
        }

    })

    require("onedark").load()

    color = color or "onedark"
    vim.cmd.colorscheme(color)
end

setColor()


require("nvim-highlight-colors").setup()
