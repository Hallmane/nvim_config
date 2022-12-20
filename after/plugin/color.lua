require("rose-pine").setup({
    disable_background = true
})

function ColorCode(color)
    color = color or "rose-pine"

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorCode()

--vim.g.tokyonight_transparent_sidebar = true
--vim.g.tokyonight_transparent = true
--vim.opt.background = "dark"
--
----vim.cmd("colorscheme tokyonight")--
--vim.cmd("colorscheme gruvbox")
