local options = {
    guicursor = "",
    nu = true,
    relativenumber = true,
    errorbells = false,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    fileencoding = "utf-8",
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    scrolloff = 8,
    signcolumn = "yes",
    cmdheight = 2,           -- Give more space for displaying messages.
    pumheight = 10,
    updatetime = 50,        -- not having longer updatetime (default is 4000 ms = 4 s) 
    colorcolumn = "80",
    clipboard = "unnamedplus",
    guifont = "monospace:h17",
}

vim.g.mapleader = " "
vim.opt.shortmess:append "c"   -- Don't pass messages to |ins-completion-menu|.
vim.opt.isfname:append("@-@")

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]    -- makes hyphenated words reachable with w
