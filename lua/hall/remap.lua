local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "   -- mapping space as leader
vim.g.maplocalleader = " "

-- Normal mode --
-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--j, doesn't work
vim.keymap.set("n", "J", "mzJ`z")

-- focused d/u navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- focused searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

-- system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- netrw
vim.keymap.set("n", "<leader>e", ":Lex 20<cr>")

-- navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- resize splits
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Visual mode --
-- stay in indent 
--vim.keymap.set("v", "<", "<gv", opts)
--vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("v", "<J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<K>", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "p", '"_dP') -- dont yank when replacing in visual

vim.keymap.set("n", "Q", "<nop>")

-- tmux prev sesh to change win
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")


-- IDK about the stuff below
--local function bind(op, outer_opts)
--    outer_opts = outer_opts or {noremap = true}
--    return function(lhs, rhs, opts)
--        opts = vim.tbl_extend("force",
--            outer_opts,
--            opts or {}
--        )
--        vim.vim.keymap.set.set(op, lhs, rhs, opts)
--    end
--end
--
--M.nmap = bind("n", {noremap = false})
--M.nnoremap = bind("n")
--M.vnoremap = bind("v")
--M.xnoremap = bind("x")
--M.inoremap = bind("i")

--return M
