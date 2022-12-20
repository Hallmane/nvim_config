local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "   -- mapping space as leader
vim.g.maplocalleader = " "

-- Normal mode --
-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


keymap("n", "<leader>e", ":Lex 20<cr>", opts) -- lefthand explorer, cr carriage return

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- resize splits
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual mode --
-- stay in indent 
--keymap("v", "<", "<gv", opts)
--keymap("v", ">", ">gv", opts)

-- move text with alt+j/k
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts) -- dont yank when replacing in visual



-- IDK about the stuff below
--local function bind(op, outer_opts)
--    outer_opts = outer_opts or {noremap = true}
--    return function(lhs, rhs, opts)
--        opts = vim.tbl_extend("force",
--            outer_opts,
--            opts or {}
--        )
--        vim.keymap.set(op, lhs, rhs, opts)
--    end
--end
--
--M.nmap = bind("n", {noremap = false})
--M.nnoremap = bind("n")
--M.vnoremap = bind("v")
--M.xnoremap = bind("x")
--M.inoremap = bind("i")

--return M
